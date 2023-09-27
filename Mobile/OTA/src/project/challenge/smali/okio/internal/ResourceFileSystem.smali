.class public final Lokio/internal/ResourceFileSystem;
.super Lokio/FileSystem;
.source "ResourceFileSystem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/internal/ResourceFileSystem$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResourceFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceFileSystem.kt\nokio/internal/ResourceFileSystem\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,212:1\n764#2:213\n855#2,2:214\n1547#2:216\n1618#2,3:217\n764#2:220\n855#2,2:221\n1547#2:223\n1618#2,3:224\n*S KotlinDebug\n*F\n+ 1 ResourceFileSystem.kt\nokio/internal/ResourceFileSystem\n*L\n72#1:213\n72#1:214,2\n73#1:216\n73#1:217,3\n88#1:220\n88#1:221,2\n89#1:223\n89#1:224,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 *2\u00020\u0001:\u0001*B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0005H\u0016J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nH\u0016J\u0010\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\nH\u0016J\u0010\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\nH\u0002J\u0018\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u0005H\u0016J\u0018\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nH\u0016J\u0018\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0005H\u0016J\u0016\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00082\u0006\u0010\u001b\u001a\u00020\nH\u0016J\u0018\u0010 \u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00082\u0006\u0010\u001b\u001a\u00020\nH\u0016J\u0012\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010\u0018\u001a\u00020\nH\u0016J\u0010\u0010#\u001a\u00020$2\u0006\u0010\u0011\u001a\u00020\nH\u0016J \u0010%\u001a\u00020$2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005H\u0016J\u0018\u0010&\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u0005H\u0016J\u0010\u0010\u0015\u001a\u00020\'2\u0006\u0010\u0011\u001a\u00020\nH\u0016J\u000c\u0010(\u001a\u00020)*\u00020\nH\u0002R-\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\n0\t0\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006+"
    }
    d2 = {
        "Lokio/internal/ResourceFileSystem;",
        "Lokio/FileSystem;",
        "classLoader",
        "Ljava/lang/ClassLoader;",
        "indexEagerly",
        "",
        "(Ljava/lang/ClassLoader;Z)V",
        "roots",
        "",
        "Lkotlin/Pair;",
        "Lokio/Path;",
        "getRoots",
        "()Ljava/util/List;",
        "roots$delegate",
        "Lkotlin/Lazy;",
        "appendingSink",
        "Lokio/Sink;",
        "file",
        "mustExist",
        "atomicMove",
        "",
        "source",
        "target",
        "canonicalize",
        "path",
        "canonicalizeInternal",
        "createDirectory",
        "dir",
        "mustCreate",
        "createSymlink",
        "delete",
        "list",
        "listOrNull",
        "metadataOrNull",
        "Lokio/FileMetadata;",
        "openReadOnly",
        "Lokio/FileHandle;",
        "openReadWrite",
        "sink",
        "Lokio/Source;",
        "toRelativePath",
        "",
        "Companion",
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


# static fields
.field private static final Companion:Lokio/internal/ResourceFileSystem$Companion;

.field private static final ROOT:Lokio/Path;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final roots$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lokio/internal/ResourceFileSystem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/internal/ResourceFileSystem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    .line 161
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "/"

    invoke-static {v0, v4, v2, v3, v1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v0

    sput-object v0, Lokio/internal/ResourceFileSystem;->ROOT:Lokio/Path;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Z)V
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "indexEagerly"    # Z

    const-string v0, "classLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lokio/FileSystem;-><init>()V

    .line 47
    new-instance v0, Lokio/internal/ResourceFileSystem$roots$2;

    invoke-direct {v0, p1}, Lokio/internal/ResourceFileSystem$roots$2;-><init>(Ljava/lang/ClassLoader;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lokio/internal/ResourceFileSystem;->roots$delegate:Lkotlin/Lazy;

    .line 49
    nop

    .line 50
    if-eqz p2, :cond_0

    .line 51
    invoke-direct {p0}, Lokio/internal/ResourceFileSystem;->getRoots()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 53
    :cond_0
    nop

    .line 43
    return-void
.end method

.method public static final synthetic access$getCompanion$p()Lokio/internal/ResourceFileSystem$Companion;
    .locals 1

    .line 43
    sget-object v0, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    return-object v0
.end method

.method public static final synthetic access$getROOT$cp()Lokio/Path;
    .locals 1

    .line 43
    sget-object v0, Lokio/internal/ResourceFileSystem;->ROOT:Lokio/Path;

    return-object v0
.end method

.method private final canonicalizeInternal(Lokio/Path;)Lokio/Path;
    .locals 2
    .param p1, "path"    # Lokio/Path;

    .line 62
    sget-object v0, Lokio/internal/ResourceFileSystem;->ROOT:Lokio/Path;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lokio/Path;->resolve(Lokio/Path;Z)Lokio/Path;

    move-result-object v0

    return-object v0
.end method

.method private final getRoots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lokio/FileSystem;",
            "Lokio/Path;",
            ">;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lokio/internal/ResourceFileSystem;->roots$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final toRelativePath(Lokio/Path;)Ljava/lang/String;
    .locals 2
    .param p1, "$this$toRelativePath"    # Lokio/Path;

    .line 156
    invoke-direct {p0, p1}, Lokio/internal/ResourceFileSystem;->canonicalizeInternal(Lokio/Path;)Lokio/Path;

    move-result-object v0

    .line 157
    .local v0, "canonicalThis":Lokio/Path;
    sget-object v1, Lokio/internal/ResourceFileSystem;->ROOT:Lokio/Path;

    invoke-virtual {v0, v1}, Lokio/Path;->relativeTo(Lokio/Path;)Lokio/Path;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Path;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public appendingSink(Lokio/Path;Z)Lokio/Sink;
    .locals 3
    .param p1, "file"    # Lokio/Path;
    .param p2, "mustExist"    # Z

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is read-only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public atomicMove(Lokio/Path;Lokio/Path;)V
    .locals 3
    .param p1, "source"    # Lokio/Path;
    .param p2, "target"    # Lokio/Path;

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is read-only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canonicalize(Lokio/Path;)Lokio/Path;
    .locals 1
    .param p1, "path"    # Lokio/Path;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1}, Lokio/internal/ResourceFileSystem;->canonicalizeInternal(Lokio/Path;)Lokio/Path;

    move-result-object v0

    return-object v0
.end method

.method public createDirectory(Lokio/Path;Z)V
    .locals 3
    .param p1, "dir"    # Lokio/Path;
    .param p2, "mustCreate"    # Z

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is read-only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSymlink(Lokio/Path;Lokio/Path;)V
    .locals 3
    .param p1, "source"    # Lokio/Path;
    .param p2, "target"    # Lokio/Path;

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is read-only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Lokio/Path;Z)V
    .locals 3
    .param p1, "path"    # Lokio/Path;
    .param p2, "mustExist"    # Z

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is read-only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public list(Lokio/Path;)Ljava/util/List;
    .locals 18
    .param p1, "dir"    # Lokio/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    const-string v0, "dir"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct/range {p0 .. p1}, Lokio/internal/ResourceFileSystem;->toRelativePath(Lokio/Path;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "relativePath":Ljava/lang/String;
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/Set;

    .line 68
    .local v3, "result":Ljava/util/Set;
    const/4 v0, 0x0

    .line 69
    .local v0, "foundAny":Z
    invoke-direct/range {p0 .. p0}, Lokio/internal/ResourceFileSystem;->getRoots()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v0

    .end local v0    # "foundAny":Z
    .local v5, "foundAny":Z
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/FileSystem;

    .local v6, "fileSystem":Lokio/FileSystem;
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lokio/Path;

    .line 70
    .local v7, "base":Lokio/Path;
    nop

    .line 71
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v7, v2}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    move-result-object v8

    invoke-virtual {v6, v8}, Lokio/FileSystem;->list(Lokio/Path;)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 72
    nop

    .local v8, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 213
    .local v9, "$i$f$filter":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination$iv$iv":Ljava/util/Collection;
    move-object v11, v8

    .local v11, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 214
    .local v12, "$i$f$filterTo":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element$iv$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Lokio/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v15, "it":Lokio/Path;
    const/16 v16, 0x0

    .line 72
    .local v16, "$i$a$-filter-ResourceFileSystem$list$1":I
    move-object/from16 v17, v2

    .end local v2    # "relativePath":Ljava/lang/String;
    .local v17, "relativePath":Ljava/lang/String;
    :try_start_1
    sget-object v2, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    invoke-static {v2, v15}, Lokio/internal/ResourceFileSystem$Companion;->access$keepPath(Lokio/internal/ResourceFileSystem$Companion;Lokio/Path;)Z

    move-result v2

    .end local v15    # "it":Lokio/Path;
    .end local v16    # "$i$a$-filter-ResourceFileSystem$list$1":I
    if-eqz v2, :cond_0

    invoke-interface {v10, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object/from16 v2, v17

    goto :goto_1

    .line 215
    .end local v14    # "element$iv$iv":Ljava/lang/Object;
    .end local v17    # "relativePath":Ljava/lang/String;
    .restart local v2    # "relativePath":Ljava/lang/String;
    :cond_1
    move-object/from16 v17, v2

    .end local v2    # "relativePath":Ljava/lang/String;
    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$filterTo":I
    .restart local v17    # "relativePath":Ljava/lang/String;
    move-object v2, v10

    check-cast v2, Ljava/util/List;

    .line 213
    nop

    .end local v8    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$filter":I
    check-cast v2, Ljava/lang/Iterable;

    .line 73
    nop

    .local v2, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 216
    .local v8, "$i$f$map":I
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v2, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination$iv$iv":Ljava/util/Collection;
    move-object v10, v2

    .local v10, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 217
    .local v11, "$i$f$mapTo":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 218
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Lokio/Path;

    .local v14, "it":Lokio/Path;
    const/4 v15, 0x0

    .line 73
    .local v15, "$i$a$-map-ResourceFileSystem$list$2":I
    move-object/from16 v16, v2

    .end local v2    # "$this$map$iv":Ljava/lang/Iterable;
    .local v16, "$this$map$iv":Ljava/lang/Iterable;
    sget-object v2, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    invoke-virtual {v2, v14, v7}, Lokio/internal/ResourceFileSystem$Companion;->removeBase(Lokio/Path;Lokio/Path;)Lokio/Path;

    move-result-object v2

    .end local v14    # "it":Lokio/Path;
    .end local v15    # "$i$a$-map-ResourceFileSystem$list$2":I
    invoke-interface {v9, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 217
    move-object/from16 v2, v16

    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    goto :goto_2

    .line 219
    .end local v16    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v2    # "$this$map$iv":Ljava/lang/Iterable;
    :cond_2
    move-object/from16 v16, v2

    .end local v2    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$mapTo":I
    .restart local v16    # "$this$map$iv":Ljava/lang/Iterable;
    move-object v2, v9

    check-cast v2, Ljava/util/List;

    .line 216
    nop

    .end local v8    # "$i$f$map":I
    .end local v16    # "$this$map$iv":Ljava/lang/Iterable;
    check-cast v2, Ljava/lang/Iterable;

    .line 71
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    const/4 v5, 0x1

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 75
    :catch_0
    move-exception v0

    goto :goto_3

    .end local v17    # "relativePath":Ljava/lang/String;
    .local v2, "relativePath":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v17, v2

    .end local v2    # "relativePath":Ljava/lang/String;
    .restart local v17    # "relativePath":Ljava/lang/String;
    :goto_3
    move-object/from16 v2, v17

    .end local v6    # "fileSystem":Lokio/FileSystem;
    .end local v7    # "base":Lokio/Path;
    goto/16 :goto_0

    .line 78
    .end local v17    # "relativePath":Ljava/lang/String;
    .restart local v2    # "relativePath":Ljava/lang/String;
    :cond_3
    move-object/from16 v17, v2

    .end local v2    # "relativePath":Ljava/lang/String;
    .restart local v17    # "relativePath":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 79
    move-object v0, v3

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 78
    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v2, "file not found: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public listOrNull(Lokio/Path;)Ljava/util/List;
    .locals 17
    .param p1, "dir"    # Lokio/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    const-string v0, "dir"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct/range {p0 .. p1}, Lokio/internal/ResourceFileSystem;->toRelativePath(Lokio/Path;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "relativePath":Ljava/lang/String;
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v2, Ljava/util/Set;

    .line 85
    .local v2, "result":Ljava/util/Set;
    const/4 v3, 0x0

    .line 86
    .local v3, "foundAny":Z
    invoke-direct/range {p0 .. p0}, Lokio/internal/ResourceFileSystem;->getRoots()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokio/FileSystem;

    .local v7, "fileSystem":Lokio/FileSystem;
    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/Path;

    .line 87
    .local v5, "base":Lokio/Path;
    invoke-virtual {v5, v0}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    move-result-object v8

    invoke-virtual {v7, v8}, Lokio/FileSystem;->listOrNull(Lokio/Path;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_0

    .line 89
    move-object/from16 v16, v0

    goto :goto_3

    .line 87
    :cond_0
    check-cast v8, Ljava/lang/Iterable;

    .line 88
    move-object v6, v8

    .local v6, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 220
    .local v8, "$i$f$filter":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination$iv$iv":Ljava/util/Collection;
    move-object v10, v6

    .local v10, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 221
    .local v11, "$i$f$filterTo":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "element$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Lokio/Path;

    .local v14, "it":Lokio/Path;
    const/4 v15, 0x0

    .line 88
    .local v15, "$i$a$-filter-ResourceFileSystem$listOrNull$baseResult$1":I
    move-object/from16 v16, v0

    .end local v0    # "relativePath":Ljava/lang/String;
    .local v16, "relativePath":Ljava/lang/String;
    sget-object v0, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    invoke-static {v0, v14}, Lokio/internal/ResourceFileSystem$Companion;->access$keepPath(Lokio/internal/ResourceFileSystem$Companion;Lokio/Path;)Z

    move-result v0

    .end local v14    # "it":Lokio/Path;
    .end local v15    # "$i$a$-filter-ResourceFileSystem$listOrNull$baseResult$1":I
    if-eqz v0, :cond_1

    invoke-interface {v9, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object/from16 v0, v16

    goto :goto_1

    .line 222
    .end local v13    # "element$iv$iv":Ljava/lang/Object;
    .end local v16    # "relativePath":Ljava/lang/String;
    .restart local v0    # "relativePath":Ljava/lang/String;
    :cond_2
    move-object/from16 v16, v0

    .end local v0    # "relativePath":Ljava/lang/String;
    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$filterTo":I
    .restart local v16    # "relativePath":Ljava/lang/String;
    move-object v0, v9

    check-cast v0, Ljava/util/List;

    .line 220
    nop

    .line 88
    .end local v6    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$filter":I
    check-cast v0, Ljava/lang/Iterable;

    .line 89
    nop

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 223
    .local v6, "$i$f$map":I
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .local v8, "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v0

    .local v9, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 224
    .local v10, "$i$f$mapTo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 225
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Lokio/Path;

    .local v13, "it":Lokio/Path;
    const/4 v14, 0x0

    .line 89
    .local v14, "$i$a$-map-ResourceFileSystem$listOrNull$baseResult$2":I
    sget-object v15, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    invoke-virtual {v15, v13, v5}, Lokio/internal/ResourceFileSystem$Companion;->removeBase(Lokio/Path;Lokio/Path;)Lokio/Path;

    move-result-object v13

    .end local v13    # "it":Lokio/Path;
    .end local v14    # "$i$a$-map-ResourceFileSystem$listOrNull$baseResult$2":I
    invoke-interface {v8, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    goto :goto_2

    .line 226
    :cond_3
    nop

    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$mapTo":I
    check-cast v8, Ljava/util/List;

    .line 223
    move-object v6, v8

    .line 87
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$map":I
    :goto_3
    move-object v0, v6

    .line 90
    .local v0, "baseResult":Ljava/util/List;
    if-eqz v0, :cond_4

    .line 91
    move-object v6, v2

    check-cast v6, Ljava/util/Collection;

    move-object v8, v0

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 92
    const/4 v3, 0x1

    move-object/from16 v0, v16

    .end local v0    # "baseResult":Ljava/util/List;
    .end local v5    # "base":Lokio/Path;
    .end local v7    # "fileSystem":Lokio/FileSystem;
    goto/16 :goto_0

    .line 90
    .restart local v0    # "baseResult":Ljava/util/List;
    .restart local v5    # "base":Lokio/Path;
    .restart local v7    # "fileSystem":Lokio/FileSystem;
    :cond_4
    move-object/from16 v0, v16

    goto/16 :goto_0

    .line 95
    .end local v5    # "base":Lokio/Path;
    .end local v7    # "fileSystem":Lokio/FileSystem;
    .end local v16    # "relativePath":Ljava/lang/String;
    .local v0, "relativePath":Ljava/lang/String;
    :cond_5
    move-object/from16 v16, v0

    .end local v0    # "relativePath":Ljava/lang/String;
    .restart local v16    # "relativePath":Ljava/lang/String;
    if-eqz v3, :cond_6

    move-object v0, v2

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    :cond_6
    return-object v6
.end method

.method public metadataOrNull(Lokio/Path;)Lokio/FileMetadata;
    .locals 6
    .param p1, "path"    # Lokio/Path;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    invoke-static {v0, p1}, Lokio/internal/ResourceFileSystem$Companion;->access$keepPath(Lokio/internal/ResourceFileSystem$Companion;Lokio/Path;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 116
    :cond_0
    invoke-direct {p0, p1}, Lokio/internal/ResourceFileSystem;->toRelativePath(Lokio/Path;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "relativePath":Ljava/lang/String;
    invoke-direct {p0}, Lokio/internal/ResourceFileSystem;->getRoots()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/FileSystem;

    .local v4, "fileSystem":Lokio/FileSystem;
    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/Path;

    .line 118
    .local v3, "base":Lokio/Path;
    invoke-virtual {v3, v0}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokio/FileSystem;->metadataOrNull(Lokio/Path;)Lokio/FileMetadata;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    return-object v5

    .line 120
    .end local v3    # "base":Lokio/Path;
    .end local v4    # "fileSystem":Lokio/FileSystem;
    :cond_2
    return-object v1
.end method

.method public openReadOnly(Lokio/Path;)Lokio/FileHandle;
    .locals 6
    .param p1, "file"    # Lokio/Path;

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    invoke-static {v0, p1}, Lokio/internal/ResourceFileSystem$Companion;->access$keepPath(Lokio/internal/ResourceFileSystem$Companion;Lokio/Path;)Z

    move-result v0

    const-string v1, "file not found: "

    if-eqz v0, :cond_1

    .line 100
    invoke-direct {p0, p1}, Lokio/internal/ResourceFileSystem;->toRelativePath(Lokio/Path;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "relativePath":Ljava/lang/String;
    invoke-direct {p0}, Lokio/internal/ResourceFileSystem;->getRoots()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/FileSystem;

    .local v4, "fileSystem":Lokio/FileSystem;
    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/Path;

    .line 102
    .local v3, "base":Lokio/Path;
    nop

    .line 103
    :try_start_0
    invoke-virtual {v3, v0}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokio/FileSystem;->openReadOnly(Lokio/Path;)Lokio/FileHandle;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 104
    :catch_0
    move-exception v5

    .end local v3    # "base":Lokio/Path;
    .end local v4    # "fileSystem":Lokio/FileSystem;
    goto :goto_0

    .line 107
    :cond_0
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    .end local v0    # "relativePath":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openReadWrite(Lokio/Path;ZZ)Lokio/FileHandle;
    .locals 2
    .param p1, "file"    # Lokio/Path;
    .param p2, "mustCreate"    # Z
    .param p3, "mustExist"    # Z

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/io/IOException;

    const-string v1, "resources are not writable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sink(Lokio/Path;Z)Lokio/Sink;
    .locals 3
    .param p1, "file"    # Lokio/Path;
    .param p2, "mustCreate"    # Z

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is read-only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public source(Lokio/Path;)Lokio/Source;
    .locals 6
    .param p1, "file"    # Lokio/Path;

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sget-object v0, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    invoke-static {v0, p1}, Lokio/internal/ResourceFileSystem$Companion;->access$keepPath(Lokio/internal/ResourceFileSystem$Companion;Lokio/Path;)Z

    move-result v0

    const-string v1, "file not found: "

    if-eqz v0, :cond_1

    .line 125
    invoke-direct {p0, p1}, Lokio/internal/ResourceFileSystem;->toRelativePath(Lokio/Path;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "relativePath":Ljava/lang/String;
    invoke-direct {p0}, Lokio/internal/ResourceFileSystem;->getRoots()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/FileSystem;

    .local v4, "fileSystem":Lokio/FileSystem;
    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/Path;

    .line 127
    .local v3, "base":Lokio/Path;
    nop

    .line 128
    :try_start_0
    invoke-virtual {v3, v0}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 129
    :catch_0
    move-exception v5

    .end local v3    # "base":Lokio/Path;
    .end local v4    # "fileSystem":Lokio/FileSystem;
    goto :goto_0

    .line 132
    :cond_0
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    .end local v0    # "relativePath":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
