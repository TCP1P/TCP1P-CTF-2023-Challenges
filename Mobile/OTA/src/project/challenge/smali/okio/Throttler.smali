.class public final Lokio/Throttler;
.super Ljava/lang/Object;
.source "Throttler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThrottler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Throttler.kt\nokio/Throttler\n+ 2 -JvmPlatform.kt\nokio/_JvmPlatformKt\n*L\n1#1,169:1\n27#2:170\n27#2:171\n*S KotlinDebug\n*F\n+ 1 Throttler.kt\nokio/Throttler\n*L\n58#1:170\n77#1:171\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u001d\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008\u000cJ$\u0010\u0006\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004H\u0007J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011J\u0015\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008\u0013J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u000c\u0010\u0016\u001a\u00020\u0004*\u00020\u0004H\u0002J\u000c\u0010\u0017\u001a\u00020\u0004*\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lokio/Throttler;",
        "",
        "()V",
        "allocatedUntil",
        "",
        "(J)V",
        "bytesPerSecond",
        "maxByteCount",
        "waitByteCount",
        "byteCountOrWaitNanos",
        "now",
        "byteCount",
        "byteCountOrWaitNanos$okio",
        "",
        "sink",
        "Lokio/Sink;",
        "source",
        "Lokio/Source;",
        "take",
        "take$okio",
        "waitNanos",
        "nanosToWait",
        "bytesToNanos",
        "nanosToBytes",
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
.field private allocatedUntil:J

.field private bytesPerSecond:J

.field private maxByteCount:J

.field private waitByteCount:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lokio/Throttler;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .param p1, "allocatedUntil"    # J

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lokio/Throttler;->allocatedUntil:J

    .line 46
    const-wide/16 v0, 0x2000

    iput-wide v0, p0, Lokio/Throttler;->waitByteCount:J

    .line 47
    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Lokio/Throttler;->maxByteCount:J

    .line 38
    return-void
.end method

.method public static synthetic bytesPerSecond$default(Lokio/Throttler;JJJILjava/lang/Object;)V
    .locals 7

    .line 53
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    .line 55
    nop

    .line 53
    iget-wide p3, p0, Lokio/Throttler;->waitByteCount:J

    :cond_0
    move-wide v3, p3

    and-int/lit8 p3, p7, 0x4

    if-eqz p3, :cond_1

    .line 56
    nop

    .line 53
    iget-wide p5, p0, Lokio/Throttler;->maxByteCount:J

    :cond_1
    move-wide v5, p5

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Lokio/Throttler;->bytesPerSecond(JJJ)V

    return-void
.end method

.method private final bytesToNanos(J)J
    .locals 4
    .param p1, "$this$bytesToNanos"    # J

    .line 126
    const-wide/32 v0, 0x3b9aca00

    mul-long/2addr v0, p1

    iget-wide v2, p0, Lokio/Throttler;->bytesPerSecond:J

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final nanosToBytes(J)J
    .locals 4
    .param p1, "$this$nanosToBytes"    # J

    .line 124
    iget-wide v0, p0, Lokio/Throttler;->bytesPerSecond:J

    mul-long/2addr v0, p1

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final waitNanos(J)V
    .locals 6
    .param p1, "nanosToWait"    # J

    .line 129
    const-wide/32 v0, 0xf4240

    div-long v2, p1, v0

    .line 130
    .local v2, "millisToWait":J
    mul-long/2addr v0, v2

    sub-long v0, p1, v0

    .line 131
    .local v0, "remainderNanos":J
    move-object v4, p0

    check-cast v4, Ljava/lang/Object;

    long-to-int v5, v0

    invoke-virtual {v4, v2, v3, v5}, Ljava/lang/Object;->wait(JI)V

    .line 132
    return-void
.end method


# virtual methods
.method public final byteCountOrWaitNanos$okio(JJ)J
    .locals 10
    .param p1, "now"    # J
    .param p3, "byteCount"    # J

    .line 94
    iget-wide v0, p0, Lokio/Throttler;->bytesPerSecond:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide p3

    .line 96
    :cond_0
    iget-wide v0, p0, Lokio/Throttler;->allocatedUntil:J

    sub-long/2addr v0, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 97
    .local v0, "idleInNanos":J
    iget-wide v4, p0, Lokio/Throttler;->maxByteCount:J

    invoke-direct {p0, v0, v1}, Lokio/Throttler;->nanosToBytes(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 100
    .local v4, "immediateBytes":J
    cmp-long v6, v4, p3

    if-ltz v6, :cond_1

    .line 101
    add-long v2, p1, v0

    invoke-direct {p0, p3, p4}, Lokio/Throttler;->bytesToNanos(J)J

    move-result-wide v6

    add-long/2addr v2, v6

    iput-wide v2, p0, Lokio/Throttler;->allocatedUntil:J

    .line 102
    return-wide p3

    .line 106
    :cond_1
    iget-wide v6, p0, Lokio/Throttler;->waitByteCount:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    .line 107
    iget-wide v2, p0, Lokio/Throttler;->maxByteCount:J

    invoke-direct {p0, v2, v3}, Lokio/Throttler;->bytesToNanos(J)J

    move-result-wide v2

    add-long/2addr v2, p1

    iput-wide v2, p0, Lokio/Throttler;->allocatedUntil:J

    .line 108
    return-wide v4

    .line 112
    :cond_2
    invoke-static {v6, v7, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 113
    .local v6, "minByteCount":J
    iget-wide v8, p0, Lokio/Throttler;->maxByteCount:J

    sub-long v8, v6, v8

    invoke-direct {p0, v8, v9}, Lokio/Throttler;->bytesToNanos(J)J

    move-result-wide v8

    add-long/2addr v8, v0

    .line 116
    .local v8, "minWaitNanos":J
    cmp-long v2, v8, v2

    if-nez v2, :cond_3

    .line 117
    iget-wide v2, p0, Lokio/Throttler;->maxByteCount:J

    invoke-direct {p0, v2, v3}, Lokio/Throttler;->bytesToNanos(J)J

    move-result-wide v2

    add-long/2addr v2, p1

    iput-wide v2, p0, Lokio/Throttler;->allocatedUntil:J

    .line 118
    return-wide v6

    .line 121
    :cond_3
    neg-long v2, v8

    return-wide v2
.end method

.method public final bytesPerSecond(J)V
    .locals 9

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v8}, Lokio/Throttler;->bytesPerSecond$default(Lokio/Throttler;JJJILjava/lang/Object;)V

    return-void
.end method

.method public final bytesPerSecond(JJ)V
    .locals 9

    const-wide/16 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v8}, Lokio/Throttler;->bytesPerSecond$default(Lokio/Throttler;JJJILjava/lang/Object;)V

    return-void
.end method

.method public final bytesPerSecond(JJJ)V
    .locals 7
    .param p1, "bytesPerSecond"    # J
    .param p3, "waitByteCount"    # J
    .param p5, "maxByteCount"    # J

    .line 58
    const/4 v0, 0x0

    .line 170
    .local v0, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v1, 0x0

    .line 59
    .local v1, "$i$a$-synchronized-Throttler$bytesPerSecond$1":I
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ltz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    if-eqz v4, :cond_5

    .line 60
    cmp-long v2, p3, v2

    if-lez v2, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    move v2, v6

    :goto_1
    if-eqz v2, :cond_4

    .line 61
    cmp-long v2, p5, p3

    if-ltz v2, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    if-eqz v5, :cond_3

    .line 63
    :try_start_0
    iput-wide p1, p0, Lokio/Throttler;->bytesPerSecond:J

    .line 64
    iput-wide p3, p0, Lokio/Throttler;->waitByteCount:J

    .line 65
    iput-wide p5, p0, Lokio/Throttler;->maxByteCount:J

    .line 66
    move-object v2, p0

    check-cast v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 67
    nop

    .end local v1    # "$i$a$-synchronized-Throttler$bytesPerSecond$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 170
    nop

    .line 68
    .end local v0    # "$i$f$synchronized":I
    return-void

    .line 61
    .restart local v0    # "$i$f$synchronized":I
    .restart local v1    # "$i$a$-synchronized-Throttler$bytesPerSecond$1":I
    :cond_3
    :try_start_1
    const-string v2, "Failed requirement."

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    .end local v0    # "$i$f$synchronized":I
    .end local p1    # "bytesPerSecond":J
    .end local p3    # "waitByteCount":J
    .end local p5    # "maxByteCount":J
    throw v3

    .line 60
    .restart local v0    # "$i$f$synchronized":I
    .restart local p1    # "bytesPerSecond":J
    .restart local p3    # "waitByteCount":J
    .restart local p5    # "maxByteCount":J
    :cond_4
    const-string v2, "Failed requirement."

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    .end local v0    # "$i$f$synchronized":I
    .end local p1    # "bytesPerSecond":J
    .end local p3    # "waitByteCount":J
    .end local p5    # "maxByteCount":J
    throw v3

    .line 59
    .restart local v0    # "$i$f$synchronized":I
    .restart local p1    # "bytesPerSecond":J
    .restart local p3    # "waitByteCount":J
    .restart local p5    # "maxByteCount":J
    :cond_5
    const-string v2, "Failed requirement."

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    .end local v0    # "$i$f$synchronized":I
    .end local p1    # "bytesPerSecond":J
    .end local p3    # "waitByteCount":J
    .end local p5    # "maxByteCount":J
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .end local v1    # "$i$a$-synchronized-Throttler$bytesPerSecond$1":I
    .restart local v0    # "$i$f$synchronized":I
    .restart local p1    # "bytesPerSecond":J
    .restart local p3    # "waitByteCount":J
    .restart local p5    # "maxByteCount":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final sink(Lokio/Sink;)Lokio/Sink;
    .locals 1
    .param p1, "sink"    # Lokio/Sink;

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance v0, Lokio/Throttler$sink$1;

    invoke-direct {v0, p0, p1}, Lokio/Throttler$sink$1;-><init>(Lokio/Throttler;Lokio/Sink;)V

    check-cast v0, Lokio/Sink;

    return-object v0
.end method

.method public final source(Lokio/Source;)Lokio/Source;
    .locals 1
    .param p1, "source"    # Lokio/Source;

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lokio/Throttler$source$1;

    invoke-direct {v0, p0, p1}, Lokio/Throttler$source$1;-><init>(Lokio/Throttler;Lokio/Source;)V

    check-cast v0, Lokio/Source;

    return-object v0
.end method

.method public final take$okio(J)J
    .locals 10
    .param p1, "byteCount"    # J

    .line 75
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 77
    const/4 v2, 0x0

    .line 171
    .local v2, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v3, 0x0

    .line 78
    .local v3, "$i$a$-synchronized-Throttler$take$1":I
    :goto_1
    nop

    .line 79
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 80
    .local v4, "now":J
    invoke-virtual {p0, v4, v5, p1, p2}, Lokio/Throttler;->byteCountOrWaitNanos$okio(JJ)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .local v6, "byteCountOrWaitNanos":J
    cmp-long v8, v6, v0

    if-ltz v8, :cond_1

    .end local v2    # "$i$f$synchronized":I
    .end local v3    # "$i$a$-synchronized-Throttler$take$1":I
    .end local v4    # "now":J
    .end local v6    # "byteCountOrWaitNanos":J
    monitor-exit p0

    return-wide v6

    .line 82
    .restart local v2    # "$i$f$synchronized":I
    .restart local v3    # "$i$a$-synchronized-Throttler$take$1":I
    .restart local v4    # "now":J
    .restart local v6    # "byteCountOrWaitNanos":J
    :cond_1
    neg-long v8, v6

    :try_start_1
    invoke-direct {p0, v8, v9}, Lokio/Throttler;->waitNanos(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "now":J
    .end local v6    # "byteCountOrWaitNanos":J
    goto :goto_1

    .end local v3    # "$i$a$-synchronized-Throttler$take$1":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 75
    .end local v2    # "$i$f$synchronized":I
    :cond_2
    const-string v0, "Failed requirement."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method
