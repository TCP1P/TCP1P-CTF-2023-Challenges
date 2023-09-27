.class final Lokhttp3/Cache$Entry;
.super Ljava/lang/Object;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cache$Entry$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000 /2\u00020\u0001:\u0001/B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020!0 2\u0006\u0010\"\u001a\u00020#H\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\n\u0010$\u001a\u00060%R\u00020&J\u001e\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020!0 H\u0002J\u0012\u0010,\u001a\u00020(2\n\u0010-\u001a\u00060.R\u00020&R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lokhttp3/Cache$Entry;",
        "",
        "rawSource",
        "Lokio/Source;",
        "(Lokio/Source;)V",
        "response",
        "Lokhttp3/Response;",
        "(Lokhttp3/Response;)V",
        "code",
        "",
        "handshake",
        "Lokhttp3/Handshake;",
        "isHttps",
        "",
        "()Z",
        "message",
        "",
        "protocol",
        "Lokhttp3/Protocol;",
        "receivedResponseMillis",
        "",
        "requestMethod",
        "responseHeaders",
        "Lokhttp3/Headers;",
        "sentRequestMillis",
        "url",
        "Lokhttp3/HttpUrl;",
        "varyHeaders",
        "matches",
        "request",
        "Lokhttp3/Request;",
        "readCertificateList",
        "",
        "Ljava/security/cert/Certificate;",
        "source",
        "Lokio/BufferedSource;",
        "snapshot",
        "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
        "Lokhttp3/internal/cache/DiskLruCache;",
        "writeCertList",
        "",
        "sink",
        "Lokio/BufferedSink;",
        "certificates",
        "writeTo",
        "editor",
        "Lokhttp3/internal/cache/DiskLruCache$Editor;",
        "Companion",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lokhttp3/Cache$Entry$Companion;

.field private static final RECEIVED_MILLIS:Ljava/lang/String;

.field private static final SENT_MILLIS:Ljava/lang/String;


# instance fields
.field private final code:I

.field private final handshake:Lokhttp3/Handshake;

.field private final message:Ljava/lang/String;

.field private final protocol:Lokhttp3/Protocol;

.field private final receivedResponseMillis:J

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lokhttp3/Headers;

.field private final sentRequestMillis:J

.field private final url:Lokhttp3/HttpUrl;

.field private final varyHeaders:Lokhttp3/Headers;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/Cache$Entry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/Cache$Entry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/Cache$Entry;->Companion:Lokhttp3/Cache$Entry$Companion;

    .line 664
    sget-object v0, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-Sent-Millis"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    .line 667
    sget-object v0, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-Received-Millis"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Response;)V
    .locals 2
    .param p1, "response"    # Lokhttp3/Response;

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    .line 550
    sget-object v0, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    invoke-virtual {v0, p1}, Lokhttp3/Cache$Companion;->varyHeaders(Lokhttp3/Response;)Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 551
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 552
    invoke-virtual {p1}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    .line 553
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    iput v0, p0, Lokhttp3/Cache$Entry;->code:I

    .line 554
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 555
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 556
    invoke-virtual {p1}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    .line 557
    invoke-virtual {p1}, Lokhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    .line 558
    invoke-virtual {p1}, Lokhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 559
    return-void
.end method

.method public constructor <init>(Lokio/Source;)V
    .locals 22
    .param p1, "rawSource"    # Lokio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "rawSource"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 494
    move-object v3, v2

    check-cast v3, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v3

    check-cast v0, Lokio/Source;

    .local v0, "it":Lokio/Source;
    const/4 v4, 0x0

    .line 495
    .local v4, "$i$a$-use-Cache$Entry$1":I
    invoke-static/range {p1 .. p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5

    .line 496
    .local v5, "source":Lokio/BufferedSource;
    invoke-interface {v5}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v6

    .line 499
    .local v6, "urlLine":Ljava/lang/String;
    sget-object v7, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v7, v6}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v7

    if-eqz v7, :cond_8

    iput-object v7, v1, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    .line 502
    invoke-interface {v5}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 503
    new-instance v7, Lokhttp3/Headers$Builder;

    invoke-direct {v7}, Lokhttp3/Headers$Builder;-><init>()V

    .line 504
    .local v7, "varyHeadersBuilder":Lokhttp3/Headers$Builder;
    sget-object v8, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    invoke-virtual {v8, v5}, Lokhttp3/Cache$Companion;->readInt$okhttp(Lokio/BufferedSource;)I

    move-result v8

    .line 505
    .local v8, "varyRequestHeaderLineCount":I
    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_0

    move v11, v10

    .local v11, "i":I
    add-int/lit8 v10, v10, 0x1

    .line 506
    invoke-interface {v5}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_0

    .line 508
    .end local v11    # "i":I
    :cond_0
    invoke-virtual {v7}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v10

    iput-object v10, v1, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 510
    sget-object v10, Lokhttp3/internal/http/StatusLine;->Companion:Lokhttp3/internal/http/StatusLine$Companion;

    invoke-interface {v5}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lokhttp3/internal/http/StatusLine$Companion;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v10

    .line 511
    .local v10, "statusLine":Lokhttp3/internal/http/StatusLine;
    iget-object v11, v10, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/Protocol;

    iput-object v11, v1, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    .line 512
    iget v11, v10, Lokhttp3/internal/http/StatusLine;->code:I

    iput v11, v1, Lokhttp3/Cache$Entry;->code:I

    .line 513
    iget-object v11, v10, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    iput-object v11, v1, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 514
    new-instance v11, Lokhttp3/Headers$Builder;

    invoke-direct {v11}, Lokhttp3/Headers$Builder;-><init>()V

    .line 515
    .local v11, "responseHeadersBuilder":Lokhttp3/Headers$Builder;
    sget-object v12, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    invoke-virtual {v12, v5}, Lokhttp3/Cache$Companion;->readInt$okhttp(Lokio/BufferedSource;)I

    move-result v12

    .line 516
    .local v12, "responseHeaderLineCount":I
    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_1

    move v14, v13

    .local v14, "i":I
    add-int/lit8 v13, v13, 0x1

    .line 517
    invoke-interface {v5}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_1

    .line 519
    .end local v14    # "i":I
    :cond_1
    sget-object v13, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v11, v13}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 520
    .local v14, "sendRequestMillisString":Ljava/lang/String;
    sget-object v15, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v11, v15}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 521
    .local v16, "receivedResponseMillisString":Ljava/lang/String;
    invoke-virtual {v11, v13}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 522
    invoke-virtual {v11, v15}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 523
    const-wide/16 v17, 0x0

    if-nez v14, :cond_2

    move-object v15, v10

    move-wide/from16 v9, v17

    goto :goto_2

    :cond_2
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    move-object v15, v10

    move-wide/from16 v9, v19

    .end local v10    # "statusLine":Lokhttp3/internal/http/StatusLine;
    .local v15, "statusLine":Lokhttp3/internal/http/StatusLine;
    :goto_2
    iput-wide v9, v1, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    .line 524
    if-nez v16, :cond_3

    :goto_3
    move-wide/from16 v9, v17

    goto :goto_4

    :cond_3
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    goto :goto_3

    :goto_4
    iput-wide v9, v1, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 525
    invoke-virtual {v11}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v9

    iput-object v9, v1, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 527
    invoke-direct/range {p0 .. p0}, Lokhttp3/Cache$Entry;->isHttps()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 528
    invoke-interface {v5}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v9

    .line 529
    .local v9, "blank":Ljava/lang/String;
    move-object/from16 v17, v9

    check-cast v17, Ljava/lang/CharSequence;

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-lez v17, :cond_4

    const/4 v13, 0x1

    goto :goto_5

    :cond_4
    const/4 v13, 0x0

    :goto_5
    if-nez v13, :cond_6

    .line 532
    invoke-interface {v5}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v13

    .line 533
    .local v13, "cipherSuiteString":Ljava/lang/String;
    sget-object v10, Lokhttp3/CipherSuite;->Companion:Lokhttp3/CipherSuite$Companion;

    invoke-virtual {v10, v13}, Lokhttp3/CipherSuite$Companion;->forJavaName(Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v10

    .line 534
    .local v10, "cipherSuite":Lokhttp3/CipherSuite;
    invoke-direct {v1, v5}, Lokhttp3/Cache$Entry;->readCertificateList(Lokio/BufferedSource;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v19, v18

    .line 535
    .local v19, "peerCertificates":Ljava/util/List;
    invoke-direct {v1, v5}, Lokhttp3/Cache$Entry;->readCertificateList(Lokio/BufferedSource;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v20, v18

    .line 536
    .local v20, "localCertificates":Ljava/util/List;
    invoke-interface {v5}, Lokio/BufferedSource;->exhausted()Z

    move-result v18

    if-nez v18, :cond_5

    .line 537
    move-object/from16 v18, v0

    .end local v0    # "it":Lokio/Source;
    .local v18, "it":Lokio/Source;
    sget-object v0, Lokhttp3/TlsVersion;->Companion:Lokhttp3/TlsVersion$Companion;

    invoke-interface {v5}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/TlsVersion$Companion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v0

    goto :goto_6

    .line 539
    .end local v18    # "it":Lokio/Source;
    .restart local v0    # "it":Lokio/Source;
    :cond_5
    move-object/from16 v18, v0

    .end local v0    # "it":Lokio/Source;
    .restart local v18    # "it":Lokio/Source;
    sget-object v0, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;

    .line 536
    :goto_6
    nop

    .line 541
    .local v0, "tlsVersion":Lokhttp3/TlsVersion;
    sget-object v2, Lokhttp3/Handshake;->Companion:Lokhttp3/Handshake$Companion;

    move/from16 v21, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v5

    move-object/from16 v5, v20

    .end local v20    # "localCertificates":Ljava/util/List;
    .local v4, "peerCertificates":Ljava/util/List;
    .local v5, "localCertificates":Ljava/util/List;
    .local v19, "source":Lokio/BufferedSource;
    .local v21, "$i$a$-use-Cache$Entry$1":I
    invoke-virtual {v2, v0, v10, v4, v5}, Lokhttp3/Handshake$Companion;->get(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lokhttp3/Handshake;

    move-result-object v2

    iput-object v2, v1, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    const/4 v0, 0x0

    .end local v0    # "tlsVersion":Lokhttp3/TlsVersion;
    .end local v4    # "peerCertificates":Ljava/util/List;
    .end local v5    # "localCertificates":Ljava/util/List;
    .end local v9    # "blank":Ljava/lang/String;
    .end local v10    # "cipherSuite":Lokhttp3/CipherSuite;
    .end local v13    # "cipherSuiteString":Ljava/lang/String;
    goto :goto_7

    .line 530
    .end local v18    # "it":Lokio/Source;
    .end local v19    # "source":Lokio/BufferedSource;
    .end local v21    # "$i$a$-use-Cache$Entry$1":I
    .local v0, "it":Lokio/Source;
    .local v4, "$i$a$-use-Cache$Entry$1":I
    .local v5, "source":Lokio/BufferedSource;
    .restart local v9    # "blank":Ljava/lang/String;
    :cond_6
    move-object/from16 v18, v0

    move/from16 v21, v4

    move-object/from16 v19, v5

    .end local v0    # "it":Lokio/Source;
    .end local v4    # "$i$a$-use-Cache$Entry$1":I
    .end local v5    # "source":Lokio/BufferedSource;
    .restart local v18    # "it":Lokio/Source;
    .restart local v19    # "source":Lokio/BufferedSource;
    .restart local v21    # "$i$a$-use-Cache$Entry$1":I
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected \"\" but was \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x22

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "rawSource":Lokio/Source;
    throw v0

    .line 543
    .end local v9    # "blank":Ljava/lang/String;
    .end local v18    # "it":Lokio/Source;
    .end local v19    # "source":Lokio/BufferedSource;
    .end local v21    # "$i$a$-use-Cache$Entry$1":I
    .restart local v0    # "it":Lokio/Source;
    .restart local v4    # "$i$a$-use-Cache$Entry$1":I
    .restart local v5    # "source":Lokio/BufferedSource;
    .restart local p1    # "rawSource":Lokio/Source;
    :cond_7
    move-object/from16 v18, v0

    move/from16 v21, v4

    move-object/from16 v19, v5

    .end local v0    # "it":Lokio/Source;
    .end local v4    # "$i$a$-use-Cache$Entry$1":I
    .end local v5    # "source":Lokio/BufferedSource;
    .restart local v18    # "it":Lokio/Source;
    .restart local v19    # "source":Lokio/BufferedSource;
    .restart local v21    # "$i$a$-use-Cache$Entry$1":I
    const/4 v0, 0x0

    iput-object v0, v1, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    .line 545
    :goto_7
    nop

    .end local v6    # "urlLine":Ljava/lang/String;
    .end local v7    # "varyHeadersBuilder":Lokhttp3/Headers$Builder;
    .end local v8    # "varyRequestHeaderLineCount":I
    .end local v11    # "responseHeadersBuilder":Lokhttp3/Headers$Builder;
    .end local v12    # "responseHeaderLineCount":I
    .end local v14    # "sendRequestMillisString":Ljava/lang/String;
    .end local v15    # "statusLine":Lokhttp3/internal/http/StatusLine;
    .end local v16    # "receivedResponseMillisString":Ljava/lang/String;
    .end local v18    # "it":Lokio/Source;
    .end local v19    # "source":Lokio/BufferedSource;
    .end local v21    # "$i$a$-use-Cache$Entry$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 546
    return-void

    .line 499
    .restart local v0    # "it":Lokio/Source;
    .restart local v4    # "$i$a$-use-Cache$Entry$1":I
    .restart local v5    # "source":Lokio/BufferedSource;
    .restart local v6    # "urlLine":Ljava/lang/String;
    :cond_8
    move-object/from16 v18, v0

    move/from16 v21, v4

    move-object/from16 v19, v5

    .end local v0    # "it":Lokio/Source;
    .end local v4    # "$i$a$-use-Cache$Entry$1":I
    .end local v5    # "source":Lokio/BufferedSource;
    .restart local v18    # "it":Lokio/Source;
    .restart local v19    # "source":Lokio/BufferedSource;
    .restart local v21    # "$i$a$-use-Cache$Entry$1":I
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Cache corruption for "

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .local v2, "it":Ljava/io/IOException;
    const/4 v4, 0x0

    .line 500
    .local v4, "$i$a$-also-Cache$Entry$1$1":I
    sget-object v5, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v5}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v5

    const-string v7, "cache corruption"

    move-object v8, v2

    check-cast v8, Ljava/lang/Throwable;

    const/4 v9, 0x5

    invoke-virtual {v5, v7, v9, v8}, Lokhttp3/internal/platform/Platform;->log(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 501
    nop

    .line 499
    .end local v2    # "it":Ljava/io/IOException;
    .end local v4    # "$i$a$-also-Cache$Entry$1$1":I
    check-cast v0, Ljava/lang/Throwable;

    .end local p1    # "rawSource":Lokio/Source;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    .end local v6    # "urlLine":Ljava/lang/String;
    .end local v18    # "it":Lokio/Source;
    .end local v19    # "source":Lokio/BufferedSource;
    .end local v21    # "$i$a$-use-Cache$Entry$1":I
    .restart local p1    # "rawSource":Lokio/Source;
    :catchall_0
    move-exception v0

    move-object v2, v0

    .end local p1    # "rawSource":Lokio/Source;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .restart local p1    # "rawSource":Lokio/Source;
    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private final isHttps()Z
    .locals 2

    .line 440
    iget-object v0, p0, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final readCertificateList(Lokio/BufferedSource;)Ljava/util/List;
    .locals 8
    .param p1, "source"    # Lokio/BufferedSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/BufferedSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 603
    sget-object v0, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    invoke-virtual {v0, p1}, Lokhttp3/Cache$Companion;->readInt$okhttp(Lokio/BufferedSource;)I

    move-result v0

    .line 604
    .local v0, "length":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 606
    :cond_0
    nop

    .line 607
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 608
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 609
    .local v2, "result":Ljava/util/ArrayList;
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    move v4, v3

    .local v4, "i":I
    add-int/lit8 v3, v3, 0x1

    .line 610
    invoke-interface {p1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    .line 611
    .local v5, "line":Ljava/lang/String;
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    .line 612
    .local v6, "bytes":Lokio/Buffer;
    sget-object v7, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v7, v5}, Lokio/ByteString$Companion;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 613
    invoke-virtual {v6}, Lokio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 615
    .end local v4    # "i":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "bytes":Lokio/Buffer;
    :cond_1
    move-object v3, v2

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 616
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "result":Ljava/util/ArrayList;
    :catch_0
    move-exception v1

    .line 617
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final writeCertList(Lokio/BufferedSink;Ljava/util/List;)V
    .locals 10
    .param p1, "sink"    # Lokio/BufferedSink;
    .param p2, "certificates"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/BufferedSink;",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 623
    nop

    .line 624
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 625
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 626
    .local v2, "element":Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 627
    .local v3, "bytes":[B
    sget-object v4, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v5, "bytes"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v5, v3

    invoke-static/range {v4 .. v9}, Lokio/ByteString$Companion;->of$default(Lokio/ByteString$Companion;[BIIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v4

    .line 628
    .local v4, "line":Ljava/lang/String;
    invoke-interface {p1, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    invoke-interface {v5, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 633
    .end local v2    # "element":Ljava/security/cert/Certificate;
    .end local v3    # "bytes":[B
    .end local v4    # "line":Ljava/lang/String;
    :cond_0
    return-void

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final matches(Lokhttp3/Request;Lokhttp3/Response;)Z
    .locals 2
    .param p1, "request"    # Lokhttp3/Request;
    .param p2, "response"    # Lokhttp3/Response;

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    sget-object v0, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    iget-object v1, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    invoke-virtual {v0, p2, v1, p1}, Lokhttp3/Cache$Companion;->varyMatches(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 636
    :goto_0
    return v0
.end method

.method public final response(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Lokhttp3/Response;
    .locals 6
    .param p1, "snapshot"    # Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    const-string/jumbo v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "contentType":Ljava/lang/String;
    iget-object v1, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "contentLength":Ljava/lang/String;
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 645
    iget-object v3, p0, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 646
    iget-object v3, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 647
    iget-object v3, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 648
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 644
    nop

    .line 649
    .local v2, "cacheRequest":Lokhttp3/Request;
    new-instance v3, Lokhttp3/Response$Builder;

    invoke-direct {v3}, Lokhttp3/Response$Builder;-><init>()V

    .line 650
    invoke-virtual {v3, v2}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 651
    iget-object v4, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 652
    iget v4, p0, Lokhttp3/Cache$Entry;->code:I

    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 653
    iget-object v4, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 654
    iget-object v4, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 655
    new-instance v4, Lokhttp3/Cache$CacheResponseBody;

    invoke-direct {v4, p1, v0, v1}, Lokhttp3/Cache$CacheResponseBody;-><init>(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v4, Lokhttp3/ResponseBody;

    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 656
    iget-object v4, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 657
    iget-wide v4, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    invoke-virtual {v3, v4, v5}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 658
    iget-wide v4, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    invoke-virtual {v3, v4, v5}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 659
    invoke-virtual {v3}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v3

    .line 649
    return-object v3
.end method

.method public final writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 10
    .param p1, "editor"    # Lokhttp3/internal/cache/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "editor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lokio/Sink;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Lokio/BufferedSink;

    .local v2, "sink":Lokio/BufferedSink;
    const/4 v3, 0x0

    .line 564
    .local v3, "$i$a$-use-Cache$Entry$writeTo$1":I
    iget-object v4, p0, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    const/16 v5, 0xa

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 565
    iget-object v4, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-interface {v2, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 566
    iget-object v4, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    invoke-virtual {v4}, Lokhttp3/Headers;->size()I

    move-result v4

    int-to-long v6, v4

    invoke-interface {v2, v6, v7}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 567
    iget-object v4, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    invoke-virtual {v4}, Lokhttp3/Headers;->size()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v0

    :goto_0
    const-string v7, ": "

    if-ge v6, v4, :cond_0

    move v8, v6

    .local v8, "i":I
    add-int/lit8 v6, v6, 0x1

    .line 568
    :try_start_1
    iget-object v9, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    invoke-virtual {v9, v8}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v9

    .line 569
    invoke-interface {v9, v7}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v7

    .line 570
    iget-object v9, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    invoke-virtual {v9, v8}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v7

    .line 571
    invoke-interface {v7, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto :goto_0

    .line 574
    .end local v8    # "i":I
    :cond_0
    new-instance v4, Lokhttp3/internal/http/StatusLine;

    iget-object v6, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    iget v8, p0, Lokhttp3/Cache$Entry;->code:I

    iget-object v9, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    invoke-direct {v4, v6, v8, v9}, Lokhttp3/internal/http/StatusLine;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    invoke-virtual {v4}, Lokhttp3/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 575
    iget-object v4, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    invoke-virtual {v4}, Lokhttp3/Headers;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    int-to-long v8, v4

    invoke-interface {v2, v8, v9}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 576
    iget-object v4, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    invoke-virtual {v4}, Lokhttp3/Headers;->size()I

    move-result v4

    :goto_1
    if-ge v0, v4, :cond_1

    move v6, v0

    .local v6, "i":I
    add-int/lit8 v0, v0, 0x1

    .line 577
    iget-object v8, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    invoke-virtual {v8, v6}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v8

    .line 578
    invoke-interface {v8, v7}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v8

    .line 579
    iget-object v9, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    invoke-virtual {v9, v6}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v8

    .line 580
    invoke-interface {v8, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto :goto_1

    .line 582
    .end local v6    # "i":I
    :cond_1
    sget-object v0, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-interface {v2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    .line 583
    invoke-interface {v0, v7}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    .line 584
    iget-wide v8, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    invoke-interface {v0, v8, v9}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v0

    .line 585
    invoke-interface {v0, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 586
    sget-object v0, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-interface {v2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    .line 587
    invoke-interface {v0, v7}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    .line 588
    iget-wide v6, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    invoke-interface {v0, v6, v7}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v0

    .line 589
    invoke-interface {v0, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 591
    invoke-direct {p0}, Lokhttp3/Cache$Entry;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 592
    invoke-interface {v2, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 593
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/Handshake;->cipherSuite()Lokhttp3/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CipherSuite;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 594
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lokhttp3/Cache$Entry;->writeCertList(Lokio/BufferedSink;Ljava/util/List;)V

    .line 595
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lokhttp3/Cache$Entry;->writeCertList(Lokio/BufferedSink;Ljava/util/List;)V

    .line 596
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->tlsVersion()Lokhttp3/TlsVersion;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 598
    :cond_2
    nop

    .end local v2    # "sink":Lokio/BufferedSink;
    .end local v3    # "$i$a$-use-Cache$Entry$writeTo$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 599
    return-void

    .line 563
    :catchall_0
    move-exception v0

    .end local p1    # "editor":Lokhttp3/internal/cache/DiskLruCache$Editor;
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .restart local p1    # "editor":Lokhttp3/internal/cache/DiskLruCache$Editor;
    :catchall_1
    move-exception v2

    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
