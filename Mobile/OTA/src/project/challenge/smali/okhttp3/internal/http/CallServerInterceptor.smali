.class public final Lokhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "CallServerInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lokhttp3/internal/http/CallServerInterceptor;",
        "Lokhttp3/Interceptor;",
        "forWebSocket",
        "",
        "(Z)V",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
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


# instance fields
.field private final forWebSocket:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "forWebSocket"    # Z

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 17
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "chain"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    move-object v1, v0

    check-cast v1, Lokhttp3/internal/http/RealInterceptorChain;

    .line 31
    .local v1, "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    invoke-virtual {v1}, Lokhttp3/internal/http/RealInterceptorChain;->getExchange$okhttp()Lokhttp3/internal/connection/Exchange;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    .local v2, "exchange":Lokhttp3/internal/connection/Exchange;
    invoke-virtual {v1}, Lokhttp3/internal/http/RealInterceptorChain;->getRequest$okhttp()Lokhttp3/Request;

    move-result-object v3

    .line 33
    .local v3, "request":Lokhttp3/Request;
    invoke-virtual {v3}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v4

    .line 34
    .local v4, "requestBody":Lokhttp3/RequestBody;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 36
    .local v5, "sentRequestMillis":J
    invoke-virtual {v2, v3}, Lokhttp3/internal/connection/Exchange;->writeRequestHeaders(Lokhttp3/Request;)V

    .line 38
    const/4 v7, 0x1

    .line 39
    .local v7, "invokeStartEvent":Z
    const/4 v8, 0x0

    .line 40
    .local v8, "responseBuilder":Lokhttp3/Response$Builder;
    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_3

    if-eqz v4, :cond_3

    .line 44
    const-string v9, "Expect"

    invoke-virtual {v3, v9}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "100-continue"

    invoke-static {v12, v9, v11}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 45
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->flushRequest()V

    .line 46
    invoke-virtual {v2, v11}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v8

    .line 47
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->responseHeadersStart()V

    .line 48
    const/4 v7, 0x0

    .line 50
    :cond_0
    if-nez v8, :cond_2

    .line 51
    invoke-virtual {v4}, Lokhttp3/RequestBody;->isDuplex()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 53
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->flushRequest()V

    .line 54
    invoke-virtual {v2, v3, v11}, Lokhttp3/internal/connection/Exchange;->createRequestBody(Lokhttp3/Request;Z)Lokio/Sink;

    move-result-object v9

    invoke-static {v9}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v9

    .line 55
    .local v9, "bufferedRequestBody":Lokio/BufferedSink;
    invoke-virtual {v4, v9}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .end local v9    # "bufferedRequestBody":Lokio/BufferedSink;
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v2, v3, v10}, Lokhttp3/internal/connection/Exchange;->createRequestBody(Lokhttp3/Request;Z)Lokio/Sink;

    move-result-object v9

    invoke-static {v9}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v9

    .line 59
    .restart local v9    # "bufferedRequestBody":Lokio/BufferedSink;
    invoke-virtual {v4, v9}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 60
    invoke-interface {v9}, Lokio/BufferedSink;->close()V

    .end local v9    # "bufferedRequestBody":Lokio/BufferedSink;
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->noRequestBody()V

    .line 64
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed$okhttp()Z

    move-result v9

    if-nez v9, :cond_4

    .line 68
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->noNewExchangesOnConnection()V

    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->noRequestBody()V

    .line 75
    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lokhttp3/RequestBody;->isDuplex()Z

    move-result v9

    if-nez v9, :cond_6

    .line 76
    :cond_5
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->finishRequest()V

    .line 78
    :cond_6
    if-nez v8, :cond_7

    .line 79
    invoke-virtual {v2, v10}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, v9

    .line 80
    if-eqz v7, :cond_7

    .line 81
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->responseHeadersStart()V

    .line 82
    const/4 v7, 0x0

    .line 85
    :cond_7
    nop

    .line 86
    invoke-virtual {v8, v3}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v9

    .line 87
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    move-result-object v12

    invoke-virtual {v12}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v12

    invoke-virtual {v9, v12}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object v9

    .line 88
    invoke-virtual {v9, v5, v6}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v9

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v9

    .line 90
    invoke-virtual {v9}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v9

    .line 85
    nop

    .line 91
    .local v9, "response":Lokhttp3/Response;
    invoke-virtual {v9}, Lokhttp3/Response;->code()I

    move-result v12

    .line 92
    .local v12, "code":I
    const/16 v13, 0x64

    if-ne v12, v13, :cond_9

    .line 95
    invoke-virtual {v2, v10}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, v10

    .line 96
    if-eqz v7, :cond_8

    .line 97
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->responseHeadersStart()V

    .line 104
    :cond_8
    nop

    .line 99
    nop

    .line 100
    invoke-virtual {v8, v3}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v10

    .line 101
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    move-result-object v13

    invoke-virtual {v13}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v13

    invoke-virtual {v10, v13}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object v10

    .line 102
    invoke-virtual {v10, v5, v6}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v10

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v10

    .line 104
    invoke-virtual {v10}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v10

    .line 99
    move-object v9, v10

    .line 105
    invoke-virtual {v9}, Lokhttp3/Response;->code()I

    move-result v12

    .line 108
    :cond_9
    invoke-virtual {v2, v9}, Lokhttp3/internal/connection/Exchange;->responseHeadersEnd(Lokhttp3/Response;)V

    .line 110
    move-object/from16 v10, p0

    iget-boolean v13, v10, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    if-eqz v13, :cond_a

    const/16 v13, 0x65

    if-ne v12, v13, :cond_a

    .line 112
    invoke-virtual {v9}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v13

    .line 113
    sget-object v14, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;

    invoke-virtual {v13, v14}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v13

    .line 114
    invoke-virtual {v13}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v13

    goto :goto_1

    .line 116
    :cond_a
    invoke-virtual {v9}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v13

    .line 117
    invoke-virtual {v2, v9}, Lokhttp3/internal/connection/Exchange;->openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v14

    invoke-virtual {v13, v14}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v13

    .line 118
    invoke-virtual {v13}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v13

    .line 110
    :goto_1
    move-object v9, v13

    .line 120
    invoke-virtual {v9}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v13

    const-string v14, "Connection"

    invoke-virtual {v13, v14}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "close"

    invoke-static {v15, v13, v11}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    const/4 v11, 0x0

    if-nez v13, :cond_b

    .line 121
    const/4 v13, 0x2

    invoke-static {v9, v14, v11, v13, v11}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v15, v13, v14}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 122
    :cond_b
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->noNewExchangesOnConnection()V

    .line 124
    :cond_c
    const/16 v13, 0xcc

    if-eq v12, v13, :cond_d

    const/16 v13, 0xcd

    if-ne v12, v13, :cond_10

    :cond_d
    invoke-virtual {v9}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v13

    if-nez v13, :cond_e

    const-wide/16 v13, -0x1

    goto :goto_2

    :cond_e
    invoke-virtual {v13}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v13

    :goto_2
    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_10

    .line 125
    new-instance v13, Ljava/net/ProtocolException;

    .line 126
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "HTTP "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " had non-zero Content-Length: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v15

    if-nez v15, :cond_f

    goto :goto_3

    :cond_f
    invoke-virtual {v15}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    :goto_3
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 125
    invoke-direct {v13, v11}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 128
    :cond_10
    return-object v9
.end method
