.class public final Lokhttp3/internal/authenticator/JavaNetAuthenticator;
.super Ljava/lang/Object;
.source "JavaNetAuthenticator.kt"

# interfaces
.implements Lokhttp3/Authenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/authenticator/JavaNetAuthenticator$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u001c\u0010\u000b\u001a\u00020\u000c*\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0003H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lokhttp3/internal/authenticator/JavaNetAuthenticator;",
        "Lokhttp3/Authenticator;",
        "defaultDns",
        "Lokhttp3/Dns;",
        "(Lokhttp3/Dns;)V",
        "authenticate",
        "Lokhttp3/Request;",
        "route",
        "Lokhttp3/Route;",
        "response",
        "Lokhttp3/Response;",
        "connectToInetAddress",
        "Ljava/net/InetAddress;",
        "Ljava/net/Proxy;",
        "url",
        "Lokhttp3/HttpUrl;",
        "dns",
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
.field private final defaultDns:Lokhttp3/Dns;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lokhttp3/internal/authenticator/JavaNetAuthenticator;-><init>(Lokhttp3/Dns;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Dns;)V
    .locals 1
    .param p1, "defaultDns"    # Lokhttp3/Dns;

    const-string v0, "defaultDns"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/authenticator/JavaNetAuthenticator;->defaultDns:Lokhttp3/Dns;

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/Dns;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 34
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    :cond_0
    invoke-direct {p0, p1}, Lokhttp3/internal/authenticator/JavaNetAuthenticator;-><init>(Lokhttp3/Dns;)V

    .line 94
    return-void
.end method

.method private final connectToInetAddress(Ljava/net/Proxy;Lokhttp3/HttpUrl;Lokhttp3/Dns;)Ljava/net/InetAddress;
    .locals 2
    .param p1, "$this$connectToInetAddress"    # Ljava/net/Proxy;
    .param p2, "url"    # Lokhttp3/HttpUrl;
    .param p3, "dns"    # Lokhttp3/Dns;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lokhttp3/internal/authenticator/JavaNetAuthenticator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/net/Proxy$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    .line 90
    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    const-string v1, "address() as InetSocketAddress).address"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    :goto_1
    return-object v0

    .line 91
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.net.InetSocketAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 22
    .param p1, "route"    # Lokhttp3/Route;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "response"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->challenges()Ljava/util/List;

    move-result-object v1

    .line 38
    .local v1, "challenges":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    .line 39
    .local v3, "request":Lokhttp3/Request;
    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    .line 40
    .local v4, "url":Lokhttp3/HttpUrl;
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    move-result v5

    const/16 v6, 0x197

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 41
    .local v5, "proxyAuthorization":Z
    :goto_0
    const/4 v6, 0x0

    if-nez p1, :cond_1

    move-object v8, v6

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v8

    :goto_1
    if-nez v8, :cond_2

    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 43
    .local v8, "proxy":Ljava/net/Proxy;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lokhttp3/Challenge;

    .line 44
    .local v10, "challenge":Lokhttp3/Challenge;
    const-string v11, "Basic"

    invoke-virtual {v10}, Lokhttp3/Challenge;->scheme()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_4

    .line 45
    goto :goto_2

    .line 48
    :cond_4
    if-nez p1, :cond_5

    :goto_3
    move-object v11, v6

    goto :goto_4

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v11

    if-nez v11, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v11}, Lokhttp3/Address;->dns()Lokhttp3/Dns;

    move-result-object v11

    :goto_4
    if-nez v11, :cond_7

    iget-object v11, v0, Lokhttp3/internal/authenticator/JavaNetAuthenticator;->defaultDns:Lokhttp3/Dns;

    .line 49
    .local v11, "dns":Lokhttp3/Dns;
    :cond_7
    const-string v12, "proxy"

    if-eqz v5, :cond_9

    .line 50
    invoke-virtual {v8}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v13

    if-eqz v13, :cond_8

    check-cast v13, Ljava/net/InetSocketAddress;

    .line 52
    .local v13, "proxyAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v13}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v14

    .line 53
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v8, v4, v11}, Lokhttp3/internal/authenticator/JavaNetAuthenticator;->connectToInetAddress(Ljava/net/Proxy;Lokhttp3/HttpUrl;Lokhttp3/Dns;)Ljava/net/InetAddress;

    move-result-object v15

    .line 54
    invoke-virtual {v13}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v16

    .line 55
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v17

    .line 56
    invoke-virtual {v10}, Lokhttp3/Challenge;->realm()Ljava/lang/String;

    move-result-object v18

    .line 57
    invoke-virtual {v10}, Lokhttp3/Challenge;->scheme()Ljava/lang/String;

    move-result-object v19

    .line 58
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v20

    .line 59
    sget-object v21, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    .line 51
    invoke-static/range {v14 .. v21}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v12

    .end local v13    # "proxyAddress":Ljava/net/InetSocketAddress;
    goto :goto_5

    .line 50
    :cond_8
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "null cannot be cast to non-null type java.net.InetSocketAddress"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 63
    :cond_9
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v13

    .line 64
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v8, v4, v11}, Lokhttp3/internal/authenticator/JavaNetAuthenticator;->connectToInetAddress(Ljava/net/Proxy;Lokhttp3/HttpUrl;Lokhttp3/Dns;)Ljava/net/InetAddress;

    move-result-object v14

    .line 65
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->port()I

    move-result v15

    .line 66
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v16

    .line 67
    invoke-virtual {v10}, Lokhttp3/Challenge;->realm()Ljava/lang/String;

    move-result-object v17

    .line 68
    invoke-virtual {v10}, Lokhttp3/Challenge;->scheme()Ljava/lang/String;

    move-result-object v18

    .line 69
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v19

    .line 70
    sget-object v20, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    .line 62
    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    invoke-static/range {v12 .. v19}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v12

    .line 49
    :goto_5
    nop

    .line 74
    .local v12, "auth":Ljava/net/PasswordAuthentication;
    if-eqz v12, :cond_3

    .line 75
    if-eqz v5, :cond_a

    const-string v6, "Proxy-Authorization"

    goto :goto_6

    :cond_a
    const-string v6, "Authorization"

    .line 77
    .local v6, "credentialHeader":Ljava/lang/String;
    :goto_6
    invoke-virtual {v12}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "auth.userName"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v13

    const-string v14, "auth.password"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v13}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v10}, Lokhttp3/Challenge;->charset()Ljava/nio/charset/Charset;

    move-result-object v13

    .line 76
    invoke-static {v7, v9, v13}, Lokhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "credential":Ljava/lang/String;
    invoke-virtual {v3}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v9

    .line 79
    invoke-virtual {v9, v6, v7}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v9

    .line 80
    invoke-virtual {v9}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v9

    .line 78
    return-object v9

    .line 84
    .end local v6    # "credentialHeader":Ljava/lang/String;
    .end local v7    # "credential":Ljava/lang/String;
    .end local v10    # "challenge":Lokhttp3/Challenge;
    .end local v11    # "dns":Lokhttp3/Dns;
    .end local v12    # "auth":Ljava/net/PasswordAuthentication;
    :cond_b
    return-object v6
.end method
