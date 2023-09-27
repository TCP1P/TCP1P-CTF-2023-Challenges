.class final Lokio/internal/ResourceFileSystem$Companion;
.super Ljava/lang/Object;
.source "ResourceFileSystem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/internal/ResourceFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResourceFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceFileSystem.kt\nokio/internal/ResourceFileSystem$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,212:1\n1601#2,9:213\n1849#2:222\n1850#2:224\n1610#2:225\n1601#2,9:226\n1849#2:235\n1850#2:237\n1610#2:238\n1#3:223\n1#3:236\n*S KotlinDebug\n*F\n+ 1 ResourceFileSystem.kt\nokio/internal/ResourceFileSystem$Companion\n*L\n183#1:213,9\n183#1:222\n183#1:224\n183#1:225\n184#1:226,9\n184#1:235\n184#1:237\n184#1:238\n183#1:223\n184#1:236\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0004H\u0002J\u0012\u0010\n\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004J\u001c\u0010\u000c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00040\u000e0\r*\u00020\u0010J\u0018\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000e*\u00020\u0012J\u0018\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000e*\u00020\u0012R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0014"
    }
    d2 = {
        "Lokio/internal/ResourceFileSystem$Companion;",
        "",
        "()V",
        "ROOT",
        "Lokio/Path;",
        "getROOT",
        "()Lokio/Path;",
        "keepPath",
        "",
        "path",
        "removeBase",
        "base",
        "toClasspathRoots",
        "",
        "Lkotlin/Pair;",
        "Lokio/FileSystem;",
        "Ljava/lang/ClassLoader;",
        "toFileRoot",
        "Ljava/net/URL;",
        "toJarRoot",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lokio/internal/ResourceFileSystem$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$keepPath(Lokio/internal/ResourceFileSystem$Companion;Lokio/Path;)Z
    .locals 1
    .param p0, "$this"    # Lokio/internal/ResourceFileSystem$Companion;
    .param p1, "path"    # Lokio/Path;

    .line 160
    invoke-direct {p0, p1}, Lokio/internal/ResourceFileSystem$Companion;->keepPath(Lokio/Path;)Z

    move-result v0

    return v0
.end method

.method private final keepPath(Lokio/Path;)Z
    .locals 3
    .param p1, "path"    # Lokio/Path;

    .line 209
    invoke-virtual {p1}, Lokio/Path;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".class"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method


# virtual methods
.method public final getROOT()Lokio/Path;
    .locals 1

    .line 161
    invoke-static {}, Lokio/internal/ResourceFileSystem;->access$getROOT$cp()Lokio/Path;

    move-result-object v0

    return-object v0
.end method

.method public final removeBase(Lokio/Path;Lokio/Path;)Lokio/Path;
    .locals 10
    .param p1, "$this$removeBase"    # Lokio/Path;
    .param p2, "base"    # Lokio/Path;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "base"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Lokio/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p0}, Lokio/internal/ResourceFileSystem$Companion;->getROOT()Lokio/Path;

    move-result-object v1

    invoke-virtual {p1}, Lokio/Path;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5c

    const/16 v6, 0x2f

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    move-result-object v1

    return-object v1
.end method

.method public final toClasspathRoots(Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 17
    .param p1, "$this$toClasspathRoots"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lokio/FileSystem;",
            "Lokio/Path;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    const-string v2, "getResources(\"\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "java.util.Collections.list(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 213
    .local v3, "$i$f$mapNotNull":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .local v5, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 221
    .local v6, "$i$f$mapNotNullTo":I
    move-object v7, v5

    .local v7, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 222
    .local v8, "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, "it"

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v12, v10

    .local v12, "element$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 221
    .local v13, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v14, v12

    check-cast v14, Ljava/net/URL;

    .local v14, "it":Ljava/net/URL;
    const/4 v15, 0x0

    .line 183
    .local v15, "$i$a$-mapNotNull-ResourceFileSystem$Companion$toClasspathRoots$1":I
    move-object/from16 v16, v1

    .end local v1    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .local v16, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    invoke-static {}, Lokio/internal/ResourceFileSystem;->access$getCompanion$p()Lokio/internal/ResourceFileSystem$Companion;

    move-result-object v1

    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Lokio/internal/ResourceFileSystem$Companion;->toFileRoot(Ljava/net/URL;)Lkotlin/Pair;

    move-result-object v1

    .end local v14    # "it":Ljava/net/URL;
    .end local v15    # "$i$a$-mapNotNull-ResourceFileSystem$Companion$toClasspathRoots$1":I
    if-eqz v1, :cond_0

    .line 223
    .local v1, "it$iv$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 221
    .local v11, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v1    # "it$iv$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    goto :goto_1

    :cond_0
    nop

    :goto_1
    move-object/from16 v1, v16

    .end local v10    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    goto :goto_0

    .line 224
    .end local v16    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .local v1, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    :cond_1
    move-object/from16 v16, v1

    .line 225
    .end local v1    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v7    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    .restart local v16    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapNotNullTo":I
    move-object v1, v4

    check-cast v1, Ljava/util/List;

    .line 213
    nop

    .end local v3    # "$i$f$mapNotNull":I
    .end local v16    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    check-cast v1, Ljava/util/Collection;

    .line 184
    const-string v3, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    const-string v4, "getResources(\"META-INF/MANIFEST.MF\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/List;

    move-object v2, v3

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 226
    .restart local v3    # "$i$f$mapNotNull":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .restart local v4    # "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .restart local v5    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 234
    .restart local v6    # "$i$f$mapNotNullTo":I
    move-object v7, v5

    .restart local v7    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 235
    .restart local v8    # "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .restart local v10    # "element$iv$iv$iv":Ljava/lang/Object;
    move-object v12, v10

    .restart local v12    # "element$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 234
    .restart local v13    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v14, v12

    check-cast v14, Ljava/net/URL;

    .restart local v14    # "it":Ljava/net/URL;
    const/4 v15, 0x0

    .line 184
    .local v15, "$i$a$-mapNotNull-ResourceFileSystem$Companion$toClasspathRoots$2":I
    invoke-static {}, Lokio/internal/ResourceFileSystem;->access$getCompanion$p()Lokio/internal/ResourceFileSystem$Companion;

    move-result-object v0

    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Lokio/internal/ResourceFileSystem$Companion;->toJarRoot(Ljava/net/URL;)Lkotlin/Pair;

    move-result-object v0

    .end local v14    # "it":Ljava/net/URL;
    .end local v15    # "$i$a$-mapNotNull-ResourceFileSystem$Companion$toClasspathRoots$2":I
    if-eqz v0, :cond_2

    .line 236
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 234
    .local v14, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    goto :goto_3

    :cond_2
    nop

    :goto_3
    move-object/from16 v0, p1

    .end local v10    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    goto :goto_2

    .line 237
    :cond_3
    nop

    .line 238
    .end local v7    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapNotNullTo":I
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    .line 226
    nop

    .end local v2    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$mapNotNull":I
    check-cast v0, Ljava/lang/Iterable;

    .line 183
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final toFileRoot(Ljava/net/URL;)Lkotlin/Pair;
    .locals 6
    .param p1, "$this$toFileRoot"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lkotlin/Pair<",
            "Lokio/FileSystem;",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 189
    :cond_0
    sget-object v0, Lokio/FileSystem;->SYSTEM:Lokio/FileSystem;

    sget-object v2, Lokio/Path;->Companion:Lokio/Path$Companion;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5, v1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/io/File;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final toJarRoot(Ljava/net/URL;)Lkotlin/Pair;
    .locals 11
    .param p1, "$this$toJarRoot"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lkotlin/Pair<",
            "Lokio/FileSystem;",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .local v0, "urlString":Ljava/lang/String;
    const-string v1, "jar:file:"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v4

    .line 198
    :cond_0
    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, "!"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    .line 199
    .local v1, "suffixStart":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    return-object v4

    .line 200
    :cond_1
    sget-object v3, Lokio/Path;->Companion:Lokio/Path$Companion;

    new-instance v5, Ljava/io/File;

    const-string v6, "jar:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    const/4 v6, 0x1

    invoke-static {v3, v5, v2, v6, v4}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/io/File;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v2

    .line 202
    .local v2, "path":Lokio/Path;
    nop

    .line 203
    sget-object v3, Lokio/FileSystem;->SYSTEM:Lokio/FileSystem;

    .line 201
    sget-object v4, Lokio/internal/ResourceFileSystem$Companion$toJarRoot$zip$1;->INSTANCE:Lokio/internal/ResourceFileSystem$Companion$toJarRoot$zip$1;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3, v4}, Lokio/internal/ZipKt;->openZip(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;)Lokio/ZipFileSystem;

    move-result-object v3

    .line 206
    .local v3, "zip":Lokio/ZipFileSystem;
    invoke-virtual {p0}, Lokio/internal/ResourceFileSystem$Companion;->getROOT()Lokio/Path;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    return-object v4
.end method
