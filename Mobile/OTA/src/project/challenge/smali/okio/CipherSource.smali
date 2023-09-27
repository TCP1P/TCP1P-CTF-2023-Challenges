.class public final Lokio/CipherSource;
.super Ljava/lang/Object;
.source "CipherSource.kt"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCipherSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CipherSource.kt\nokio/CipherSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,114:1\n1#2:115\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0002J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0014H\u0016J\u0008\u0010\u0017\u001a\u00020\u0011H\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0011H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lokio/CipherSource;",
        "Lokio/Source;",
        "source",
        "Lokio/BufferedSource;",
        "cipher",
        "Ljavax/crypto/Cipher;",
        "(Lokio/BufferedSource;Ljavax/crypto/Cipher;)V",
        "blockSize",
        "",
        "buffer",
        "Lokio/Buffer;",
        "getCipher",
        "()Ljavax/crypto/Cipher;",
        "closed",
        "",
        "final",
        "close",
        "",
        "doFinal",
        "read",
        "",
        "sink",
        "byteCount",
        "refill",
        "timeout",
        "Lokio/Timeout;",
        "update",
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
.field private final blockSize:I

.field private final buffer:Lokio/Buffer;

.field private final cipher:Ljavax/crypto/Cipher;

.field private closed:Z

.field private final:Z

.field private final source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;Ljavax/crypto/Cipher;)V
    .locals 3
    .param p1, "source"    # Lokio/BufferedSource;
    .param p2, "cipher"    # Ljavax/crypto/Cipher;

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cipher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lokio/CipherSource;->source:Lokio/BufferedSource;

    .line 23
    iput-object p2, p0, Lokio/CipherSource;->cipher:Ljavax/crypto/Cipher;

    .line 25
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lokio/CipherSource;->blockSize:I

    .line 26
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    iput-object v1, p0, Lokio/CipherSource;->buffer:Lokio/Buffer;

    .line 30
    nop

    .line 32
    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 33
    nop

    .line 21
    return-void

    .line 115
    :cond_1
    const/4 v0, 0x0

    .line 32
    .local v0, "$i$a$-require-CipherSource$1":I
    const-string v1, "Block cipher required "

    invoke-virtual {p0}, Lokio/CipherSource;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-CipherSource$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method private final doFinal()V
    .locals 8

    .line 88
    iget-object v0, p0, Lokio/CipherSource;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    .line 89
    .local v0, "outputSize":I
    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lokio/CipherSource;->buffer:Lokio/Buffer;

    invoke-virtual {v1, v0}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v1

    .line 94
    .local v1, "s":Lokio/Segment;
    iget-object v2, p0, Lokio/CipherSource;->cipher:Ljavax/crypto/Cipher;

    iget-object v3, v1, Lokio/Segment;->data:[B

    iget v4, v1, Lokio/Segment;->pos:I

    invoke-virtual {v2, v3, v4}, Ljavax/crypto/Cipher;->doFinal([BI)I

    move-result v2

    .line 96
    .local v2, "ciphered":I
    iget v3, v1, Lokio/Segment;->limit:I

    add-int/2addr v3, v2

    iput v3, v1, Lokio/Segment;->limit:I

    .line 97
    iget-object v3, p0, Lokio/CipherSource;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->setSize$okio(J)V

    .line 100
    iget v3, v1, Lokio/Segment;->pos:I

    iget v4, v1, Lokio/Segment;->limit:I

    if-ne v3, v4, :cond_1

    .line 101
    iget-object v3, p0, Lokio/CipherSource;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v4

    iput-object v4, v3, Lokio/Buffer;->head:Lokio/Segment;

    .line 102
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 104
    :cond_1
    return-void
.end method

.method private final refill()V
    .locals 4

    .line 48
    nop

    :goto_0
    iget-object v0, p0, Lokio/CipherSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lokio/CipherSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/CipherSource;->final:Z

    .line 51
    invoke-direct {p0}, Lokio/CipherSource;->doFinal()V

    .line 52
    goto :goto_1

    .line 54
    :cond_0
    invoke-direct {p0}, Lokio/CipherSource;->update()V

    goto :goto_0

    .line 57
    :cond_1
    :goto_1
    return-void
.end method

.method private final update()V
    .locals 10

    .line 60
    iget-object v0, p0, Lokio/CipherSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v0

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 61
    .local v0, "head":Lokio/Segment;
    const/4 v1, 0x0

    .local v1, "size":I
    iget v2, v0, Lokio/Segment;->limit:I

    iget v3, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    .line 64
    .end local v1    # "size":I
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "outputSize":I
    iget-object v3, p0, Lokio/CipherSource;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v1

    move v8, v2

    .line 65
    .end local v2    # "size":I
    .local v8, "size":I
    :goto_0
    const/16 v2, 0x2000

    if-le v1, v2, :cond_2

    .line 66
    iget v2, p0, Lokio/CipherSource;->blockSize:I

    if-le v8, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    .line 67
    sub-int/2addr v8, v2

    .line 68
    iget-object v2, p0, Lokio/CipherSource;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v8}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v1

    goto :goto_0

    .line 115
    :cond_1
    const/4 v2, 0x0

    .line 66
    .local v2, "$i$a$-check-CipherSource$update$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected output size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for input size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-check-CipherSource$update$1":I
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 70
    :cond_2
    iget-object v2, p0, Lokio/CipherSource;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v1}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v9

    .line 73
    .local v9, "s":Lokio/Segment;
    iget-object v2, p0, Lokio/CipherSource;->cipher:Ljavax/crypto/Cipher;

    iget-object v3, v0, Lokio/Segment;->data:[B

    iget v4, v0, Lokio/Segment;->pos:I

    iget-object v6, v9, Lokio/Segment;->data:[B

    iget v7, v9, Lokio/Segment;->pos:I

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v2

    .line 72
    nop

    .line 75
    .local v2, "ciphered":I
    iget-object v3, p0, Lokio/CipherSource;->source:Lokio/BufferedSource;

    int-to-long v4, v8

    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->skip(J)V

    .line 77
    iget v3, v9, Lokio/Segment;->limit:I

    add-int/2addr v3, v2

    iput v3, v9, Lokio/Segment;->limit:I

    .line 78
    iget-object v3, p0, Lokio/CipherSource;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->setSize$okio(J)V

    .line 81
    iget v3, v9, Lokio/Segment;->pos:I

    iget v4, v9, Lokio/Segment;->limit:I

    if-ne v3, v4, :cond_3

    .line 82
    iget-object v3, p0, Lokio/CipherSource;->buffer:Lokio/Buffer;

    invoke-virtual {v9}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v4

    iput-object v4, v3, Lokio/Buffer;->head:Lokio/Segment;

    .line 83
    invoke-static {v9}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 85
    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/CipherSource;->closed:Z

    .line 111
    iget-object v0, p0, Lokio/CipherSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 112
    return-void
.end method

.method public final getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .line 23
    iget-object v0, p0, Lokio/CipherSource;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 4
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 38
    iget-boolean v2, p0, Lokio/CipherSource;->closed:Z

    xor-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 39
    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    return-wide v0

    .line 40
    :cond_1
    iget-boolean v0, p0, Lokio/CipherSource;->final:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lokio/CipherSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v0

    return-wide v0

    .line 42
    :cond_2
    invoke-direct {p0}, Lokio/CipherSource;->refill()V

    .line 44
    iget-object v0, p0, Lokio/CipherSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v0

    return-wide v0

    .line 115
    :cond_3
    const/4 v0, 0x0

    .line 38
    .local v0, "$i$a$-check-CipherSource$read$2":I
    nop

    .end local v0    # "$i$a$-check-CipherSource$read$2":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 115
    :cond_4
    const/4 v0, 0x0

    .line 37
    .local v0, "$i$a$-require-CipherSource$read$1":I
    const-string v1, "byteCount < 0: "

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-CipherSource$read$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 106
    iget-object v0, p0, Lokio/CipherSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
