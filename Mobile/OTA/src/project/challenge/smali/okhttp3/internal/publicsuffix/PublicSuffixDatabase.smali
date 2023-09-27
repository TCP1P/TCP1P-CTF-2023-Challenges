.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000f\u001a\u00020\u000cJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0008\u0010\u0012\u001a\u00020\u0011H\u0002J\u0016\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u000f\u001a\u00020\u000cH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;",
        "",
        "()V",
        "listRead",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "publicSuffixExceptionListBytes",
        "",
        "publicSuffixListBytes",
        "readCompleteLatch",
        "Ljava/util/concurrent/CountDownLatch;",
        "findMatchingRule",
        "",
        "",
        "domainLabels",
        "getEffectiveTldPlusOne",
        "domain",
        "readTheList",
        "",
        "readTheListUninterruptibly",
        "setListBytes",
        "splitDomain",
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
.field public static final Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

.field private static final EXCEPTION_MARKER:C = '!'

.field private static final PREVAILING_RULE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_SUFFIX_RESOURCE:Ljava/lang/String; = "publicsuffixes.gz"

.field private static final WILDCARD_LABEL:[B

.field private static final instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field private final listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private publicSuffixExceptionListBytes:[B

.field private publicSuffixListBytes:[B

.field private final readCompleteLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    .line 242
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    .line 243
    const-string v0, "*"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:Ljava/util/List;

    .line 247
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    .line 35
    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .locals 1

    .line 35
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method

.method private final findMatchingRule(Ljava/util/List;)Ljava/util/List;
    .locals 17
    .param p1, "domainLabels"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    move-object/from16 v1, p0

    iget-object v0, v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheListUninterruptibly()V

    goto :goto_0

    .line 103
    :cond_0
    nop

    .line 104
    :try_start_0
    iget-object v0, v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "_":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 110
    .end local v0    # "_":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_13

    .line 115
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [[B

    move v5, v2

    :goto_2
    if-ge v5, v0, :cond_2

    move-object/from16 v6, p1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v9, "UTF_8"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    const-string/jumbo v8, "this as java.lang.String).getBytes(charset)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v6, p1

    move-object v0, v4

    .line 119
    .local v0, "domainLabelsUtf8Bytes":[[B
    const/4 v4, 0x0

    .line 120
    .local v4, "exactMatch":Ljava/lang/String;
    move-object v5, v0

    check-cast v5, [Ljava/lang/Object;

    array-length v5, v5

    move v7, v2

    :cond_3
    const-string v8, "publicSuffixListBytes"

    const/4 v9, 0x0

    if-ge v7, v5, :cond_5

    move v10, v7

    .local v10, "i":I
    add-int/lit8 v7, v7, 0x1

    .line 121
    sget-object v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    iget-object v12, v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-nez v12, :cond_4

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v12, v9

    :cond_4
    invoke-static {v11, v12, v0, v10}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->access$binarySearch(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;[B[[BI)Ljava/lang/String;

    move-result-object v11

    .line 122
    .local v11, "rule":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 123
    move-object v4, v11

    .line 124
    nop

    .line 133
    .end local v10    # "i":I
    .end local v11    # "rule":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    .line 134
    .local v5, "wildcardMatch":Ljava/lang/String;
    move-object v7, v0

    check-cast v7, [Ljava/lang/Object;

    array-length v7, v7

    if-le v7, v3, :cond_8

    .line 135
    move-object v7, v0

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[B

    .line 136
    .local v7, "labelsWithWildcard":[[B
    move-object v10, v7

    check-cast v10, [Ljava/lang/Object;

    array-length v10, v10

    sub-int/2addr v10, v3

    move v11, v2

    :cond_6
    if-ge v11, v10, :cond_8

    move v12, v11

    .local v12, "labelIndex":I
    add-int/lit8 v11, v11, 0x1

    .line 137
    sget-object v13, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    aput-object v13, v7, v12

    .line 138
    sget-object v13, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    iget-object v14, v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-nez v14, :cond_7

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v14, v9

    :cond_7
    invoke-static {v13, v14, v7, v12}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->access$binarySearch(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;[B[[BI)Ljava/lang/String;

    move-result-object v13

    .line 139
    .local v13, "rule":Ljava/lang/String;
    if-eqz v13, :cond_6

    .line 140
    move-object v5, v13

    .line 141
    nop

    .line 147
    .end local v7    # "labelsWithWildcard":[[B
    .end local v12    # "labelIndex":I
    .end local v13    # "rule":Ljava/lang/String;
    :cond_8
    const/4 v7, 0x0

    .line 148
    .local v7, "exception":Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 149
    move-object v8, v0

    check-cast v8, [Ljava/lang/Object;

    array-length v8, v8

    sub-int/2addr v8, v3

    move v10, v2

    :cond_9
    if-ge v10, v8, :cond_b

    move v11, v10

    .local v11, "labelIndex":I
    add-int/lit8 v10, v10, 0x1

    .line 150
    sget-object v12, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    iget-object v13, v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    if-nez v13, :cond_a

    const-string v13, "publicSuffixExceptionListBytes"

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v13, v9

    .line 151
    :cond_a
    nop

    .line 150
    invoke-static {v12, v13, v0, v11}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->access$binarySearch(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;[B[[BI)Ljava/lang/String;

    move-result-object v12

    .line 152
    .local v12, "rule":Ljava/lang/String;
    if-eqz v12, :cond_9

    .line 153
    move-object v7, v12

    .line 154
    nop

    .line 159
    .end local v11    # "labelIndex":I
    .end local v12    # "rule":Ljava/lang/String;
    :cond_b
    const/16 v8, 0x2e

    if-eqz v7, :cond_c

    .line 161
    const-string v9, "!"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 162
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    new-array v10, v3, [C

    aput-char v8, v10, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x6

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 163
    :cond_c
    if-nez v4, :cond_d

    if-nez v5, :cond_d

    .line 164
    sget-object v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:Ljava/util/List;

    return-object v2

    .line 167
    :cond_d
    if-nez v4, :cond_e

    move-object v10, v9

    goto :goto_3

    :cond_e
    move-object v10, v4

    check-cast v10, Ljava/lang/CharSequence;

    new-array v11, v3, [C

    aput-char v8, v11, v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v10

    :goto_3
    if-nez v10, :cond_f

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 168
    .local v10, "exactRuleLabels":Ljava/util/List;
    :cond_f
    if-nez v5, :cond_10

    goto :goto_4

    :cond_10
    move-object v11, v5

    check-cast v11, Ljava/lang/CharSequence;

    new-array v12, v3, [C

    aput-char v8, v12, v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v9

    :goto_4
    if-nez v9, :cond_11

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    :cond_11
    move-object v2, v9

    .line 170
    .local v2, "wildcardRuleLabels":Ljava/util/List;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-le v3, v8, :cond_12

    .line 171
    move-object v3, v10

    goto :goto_5

    .line 173
    :cond_12
    move-object v3, v2

    .line 170
    :goto_5
    return-object v3

    .line 110
    .end local v0    # "domainLabelsUtf8Bytes":[[B
    .end local v2    # "wildcardRuleLabels":Ljava/util/List;
    .end local v4    # "exactMatch":Ljava/lang/String;
    .end local v5    # "wildcardMatch":Ljava/lang/String;
    .end local v7    # "exception":Ljava/lang/String;
    .end local v10    # "exactRuleLabels":Ljava/util/List;
    :cond_13
    move-object/from16 v6, p1

    const/4 v0, 0x0

    .line 111
    .local v0, "$i$a$-check-PublicSuffixDatabase$findMatchingRule$2":I
    nop

    .line 110
    .end local v0    # "$i$a$-check-PublicSuffixDatabase$findMatchingRule$2":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final readTheList()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "publicSuffixListBytes":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "publicSuffixExceptionListBytes":Ljava/lang/Object;
    const-class v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 210
    const-string v3, "publicsuffixes.gz"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 209
    :cond_0
    nop

    .line 212
    .local v2, "resource":Ljava/io/InputStream;
    new-instance v3, Lokio/GzipSource;

    invoke-static {v2}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v4

    invoke-direct {v3, v4}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    check-cast v3, Lokio/Source;

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v3

    check-cast v3, Ljava/io/Closeable;

    :try_start_0
    move-object v4, v3

    check-cast v4, Lokio/BufferedSource;

    .local v4, "bufferedSource":Lokio/BufferedSource;
    const/4 v5, 0x0

    .line 213
    .local v5, "$i$a$-use-PublicSuffixDatabase$readTheList$1":I
    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v6

    .line 214
    .local v6, "totalBytes":I
    int-to-long v7, v6

    invoke-interface {v4, v7, v8}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object v7

    move-object v0, v7

    .line 216
    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v7

    .line 217
    .local v7, "totalExceptionBytes":I
    int-to-long v8, v7

    invoke-interface {v4, v8, v9}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object v8

    move-object v1, v8

    .line 218
    nop

    .end local v4    # "bufferedSource":Lokio/BufferedSource;
    .end local v5    # "$i$a$-use-PublicSuffixDatabase$readTheList$1":I
    .end local v6    # "totalBytes":I
    .end local v7    # "totalExceptionBytes":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 212
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 220
    monitor-enter p0

    const/4 v3, 0x0

    .line 221
    .local v3, "$i$a$-synchronized-PublicSuffixDatabase$readTheList$2":I
    :try_start_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 222
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 223
    nop

    .end local v3    # "$i$a$-synchronized-PublicSuffixDatabase$readTheList$2":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    monitor-exit p0

    .line 225
    iget-object v3, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 226
    return-void

    .line 220
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 212
    :catchall_1
    move-exception v4

    .end local v0    # "publicSuffixListBytes":Ljava/lang/Object;
    .end local v1    # "publicSuffixExceptionListBytes":Ljava/lang/Object;
    .end local v2    # "resource":Ljava/io/InputStream;
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .restart local v0    # "publicSuffixListBytes":Ljava/lang/Object;
    .restart local v1    # "publicSuffixExceptionListBytes":Ljava/lang/Object;
    .restart local v2    # "resource":Ljava/io/InputStream;
    :catchall_2
    move-exception v5

    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private final readTheListUninterruptibly()V
    .locals 6

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "interrupted":Z
    nop

    .line 185
    :goto_0
    nop

    .line 186
    nop

    .line 187
    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheList()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    nop

    .line 198
    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 188
    :cond_0
    return-void

    .line 197
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v2}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    const-string v3, "Failed to read public suffix list"

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    const/4 v5, 0x5

    invoke-virtual {v2, v3, v5, v4}, Lokhttp3/internal/platform/Platform;->log(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    nop

    .line 198
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_1

    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .restart local v1    # "e":Ljava/io/IOException;
    nop

    .line 194
    :cond_1
    return-void

    .line 189
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 190
    .local v1, "_":Ljava/io/InterruptedIOException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    const/4 v0, 0x1

    .end local v1    # "_":Ljava/io/InterruptedIOException;
    goto :goto_0

    .line 198
    :goto_1
    if-eqz v0, :cond_2

    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v1
.end method

.method private final splitDomain(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v6, 0x1

    new-array v1, v6, [C

    const/4 v2, 0x0

    const/16 v3, 0x2e

    aput-char v3, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 91
    .local v0, "domainLabels":Ljava/util/List;
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 96
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "domain"    # Ljava/lang/String;

    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "unicodeDomain":Ljava/lang/String;
    const-string/jumbo v1, "unicodeDomain"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, "domainLabels":Ljava/util/List;
    invoke-direct {p0, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->findMatchingRule(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 73
    .local v2, "rule":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x21

    const/4 v6, 0x0

    if-ne v3, v4, :cond_0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_0

    .line 74
    const/4 v3, 0x0

    return-object v3

    .line 77
    :cond_0
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    .line 79
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_0

    .line 82
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    .line 77
    :goto_0
    nop

    .line 85
    .local v3, "firstLabelOffset":I
    invoke-direct {p0, p1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/sequences/SequencesKt;->drop(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    move-result-object v5

    const-string v4, "."

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public final setListBytes([B[B)V
    .locals 2
    .param p1, "publicSuffixListBytes"    # [B
    .param p2, "publicSuffixExceptionListBytes"    # [B

    const-string v0, "publicSuffixListBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publicSuffixExceptionListBytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iput-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 234
    iput-object p2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 235
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 236
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 237
    return-void
.end method
