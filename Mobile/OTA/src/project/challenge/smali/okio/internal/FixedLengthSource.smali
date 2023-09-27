.class public final Lokio/internal/FixedLengthSource;
.super Lokio/ForwardingSource;
.source "FixedLengthSource.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0005H\u0016J\u0014\u0010\u000e\u001a\u00020\u000f*\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0005H\u0002R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lokio/internal/FixedLengthSource;",
        "Lokio/ForwardingSource;",
        "delegate",
        "Lokio/Source;",
        "size",
        "",
        "truncate",
        "",
        "(Lokio/Source;JZ)V",
        "bytesReceived",
        "read",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "truncateToSize",
        "",
        "newSize",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private bytesReceived:J

.field private final size:J

.field private final truncate:Z


# direct methods
.method public constructor <init>(Lokio/Source;JZ)V
    .locals 1
    .param p1, "delegate"    # Lokio/Source;
    .param p2, "size"    # J
    .param p4, "truncate"    # Z

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 33
    iput-wide p2, p0, Lokio/internal/FixedLengthSource;->size:J

    .line 34
    iput-boolean p4, p0, Lokio/internal/FixedLengthSource;->truncate:Z

    .line 31
    return-void
.end method

.method private final truncateToSize(Lokio/Buffer;J)V
    .locals 2
    .param p1, "$this$truncateToSize"    # Lokio/Buffer;
    .param p2, "newSize"    # J

    .line 72
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 73
    .local v0, "scratch":Lokio/Buffer;
    move-object v1, p1

    check-cast v1, Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 74
    invoke-virtual {p1, v0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 75
    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    .line 76
    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 15
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    move-object v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "sink"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    nop

    .line 46
    iget-wide v2, v0, Lokio/internal/FixedLengthSource;->bytesReceived:J

    iget-wide v4, v0, Lokio/internal/FixedLengthSource;->size:J

    cmp-long v6, v2, v4

    const-wide/16 v7, -0x1

    const-wide/16 v9, 0x0

    if-lez v6, :cond_0

    move-wide/from16 v2, p2

    move-wide v4, v9

    goto :goto_0

    .line 47
    :cond_0
    iget-boolean v6, v0, Lokio/internal/FixedLengthSource;->truncate:Z

    if-eqz v6, :cond_2

    .line 48
    sub-long/2addr v4, v2

    .line 49
    .local v4, "remaining":J
    cmp-long v2, v4, v9

    if-nez v2, :cond_1

    return-wide v7

    .line 50
    :cond_1
    move-wide/from16 v2, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .end local v4    # "remaining":J
    goto :goto_0

    .line 52
    :cond_2
    move-wide/from16 v2, p2

    move-wide v4, v2

    .line 45
    :goto_0
    nop

    .line 55
    .local v4, "toRead":J
    invoke-super {p0, v1, v4, v5}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide v11

    .line 57
    .local v11, "result":J
    cmp-long v6, v11, v7

    if-eqz v6, :cond_3

    iget-wide v13, v0, Lokio/internal/FixedLengthSource;->bytesReceived:J

    add-long/2addr v13, v11

    iput-wide v13, v0, Lokio/internal/FixedLengthSource;->bytesReceived:J

    .line 60
    :cond_3
    iget-wide v13, v0, Lokio/internal/FixedLengthSource;->bytesReceived:J

    iget-wide v9, v0, Lokio/internal/FixedLengthSource;->size:J

    cmp-long v6, v13, v9

    if-gez v6, :cond_4

    cmp-long v6, v11, v7

    if-eqz v6, :cond_5

    :cond_4
    cmp-long v6, v13, v9

    if-lez v6, :cond_7

    .line 61
    :cond_5
    const-wide/16 v6, 0x0

    cmp-long v6, v11, v6

    if-lez v6, :cond_6

    cmp-long v6, v13, v9

    if-lez v6, :cond_6

    .line 63
    invoke-virtual/range {p1 .. p1}, Lokio/Buffer;->size()J

    move-result-wide v6

    iget-wide v8, v0, Lokio/internal/FixedLengthSource;->bytesReceived:J

    iget-wide v13, v0, Lokio/internal/FixedLengthSource;->size:J

    sub-long/2addr v8, v13

    sub-long/2addr v6, v8

    invoke-direct {p0, v1, v6, v7}, Lokio/internal/FixedLengthSource;->truncateToSize(Lokio/Buffer;J)V

    .line 65
    :cond_6
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lokio/internal/FixedLengthSource;->size:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes but got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lokio/internal/FixedLengthSource;->bytesReceived:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 68
    :cond_7
    return-wide v11
.end method
