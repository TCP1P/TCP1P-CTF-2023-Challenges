.class public final Lokio/Path;
.super Ljava/lang/Object;
.source "Path.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Path$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lokio/Path;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Path.kt\nokio/Path\n+ 2 -Path.kt\nokio/internal/_PathKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,128:1\n42#2,3:129\n50#2,28:132\n56#2,22:164\n109#2:186\n114#2:187\n119#2,6:188\n136#2,5:194\n146#2:199\n151#2,25:200\n191#2:225\n196#2,11:226\n201#2,6:237\n196#2,11:243\n201#2,6:254\n225#2,36:260\n265#2:296\n279#2:297\n284#2:298\n289#2:299\n294#2:300\n1547#3:160\n1618#3,3:161\n*S KotlinDebug\n*F\n+ 1 Path.kt\nokio/Path\n*L\n45#1:129,3\n48#1:132,28\n51#1:164,22\n54#1:186\n57#1:187\n61#1:188,6\n65#1:194,5\n69#1:199\n73#1:200,25\n76#1:225\n79#1:226,11\n82#1:237,6\n88#1:243,11\n91#1:254,6\n96#1:260,36\n98#1:296\n105#1:297\n107#1:298\n109#1:299\n111#1:300\n48#1:160\n48#1:161,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 .2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001.B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0011\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0000H\u0096\u0002J\u0016\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\rH\u0087\u0002\u00a2\u0006\u0002\u0008\"J\u0016\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0003H\u0087\u0002\u00a2\u0006\u0002\u0008\"J\u0016\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0000H\u0087\u0002\u00a2\u0006\u0002\u0008\"J\u0013\u0010#\u001a\u00020\u00082\u0008\u0010\u001f\u001a\u0004\u0018\u00010$H\u0096\u0002J\u0008\u0010%\u001a\u00020\u001eH\u0016J\u0006\u0010&\u001a\u00020\u0000J\u000e\u0010\'\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0000J\u0018\u0010\"\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\r2\u0008\u0008\u0002\u0010(\u001a\u00020\u0008J\u0018\u0010\"\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u00032\u0008\u0008\u0002\u0010(\u001a\u00020\u0008J\u0018\u0010\"\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010(\u001a\u00020\u0008J\u0006\u0010)\u001a\u00020*J\u0008\u0010+\u001a\u00020,H\u0007J\u0008\u0010-\u001a\u00020\rH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\tR\u0011\u0010\n\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u000b\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u000c\u001a\u00020\r8G\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00038G\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0006R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u00008G\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0011R\u0017\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0017R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u001b8G\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001c\u00a8\u0006/"
    }
    d2 = {
        "Lokio/Path;",
        "",
        "bytes",
        "Lokio/ByteString;",
        "(Lokio/ByteString;)V",
        "getBytes$okio",
        "()Lokio/ByteString;",
        "isAbsolute",
        "",
        "()Z",
        "isRelative",
        "isRoot",
        "name",
        "",
        "()Ljava/lang/String;",
        "nameBytes",
        "parent",
        "()Lokio/Path;",
        "root",
        "getRoot",
        "segments",
        "",
        "getSegments",
        "()Ljava/util/List;",
        "segmentsBytes",
        "getSegmentsBytes",
        "volumeLetter",
        "",
        "()Ljava/lang/Character;",
        "compareTo",
        "",
        "other",
        "div",
        "child",
        "resolve",
        "equals",
        "",
        "hashCode",
        "normalized",
        "relativeTo",
        "normalize",
        "toFile",
        "Ljava/io/File;",
        "toNioPath",
        "Ljava/nio/file/Path;",
        "toString",
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
.field public static final Companion:Lokio/Path$Companion;

.field public static final DIRECTORY_SEPARATOR:Ljava/lang/String;


# instance fields
.field private final bytes:Lokio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokio/Path$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/Path$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    .line 115
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v1, "separator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lokio/ByteString;)V
    .locals 1
    .param p1, "bytes"    # Lokio/ByteString;

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lokio/Path;->bytes:Lokio/ByteString;

    .line 41
    return-void
.end method

.method public static final get(Ljava/io/File;)Lokio/Path;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    invoke-virtual {v0, p0}, Lokio/Path$Companion;->get(Ljava/io/File;)Lokio/Path;

    move-result-object v0

    return-object v0
.end method

.method public static final get(Ljava/io/File;Z)Lokio/Path;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    invoke-virtual {v0, p0, p1}, Lokio/Path$Companion;->get(Ljava/io/File;Z)Lokio/Path;

    move-result-object v0

    return-object v0
.end method

.method public static final get(Ljava/lang/String;)Lokio/Path;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    invoke-virtual {v0, p0}, Lokio/Path$Companion;->get(Ljava/lang/String;)Lokio/Path;

    move-result-object v0

    return-object v0
.end method

.method public static final get(Ljava/lang/String;Z)Lokio/Path;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    invoke-virtual {v0, p0, p1}, Lokio/Path$Companion;->get(Ljava/lang/String;Z)Lokio/Path;

    move-result-object v0

    return-object v0
.end method

.method public static final get(Ljava/nio/file/Path;)Lokio/Path;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    invoke-virtual {v0, p0}, Lokio/Path$Companion;->get(Ljava/nio/file/Path;)Lokio/Path;

    move-result-object v0

    return-object v0
.end method

.method public static final get(Ljava/nio/file/Path;Z)Lokio/Path;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    invoke-virtual {v0, p0, p1}, Lokio/Path$Companion;->get(Ljava/nio/file/Path;Z)Lokio/Path;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic resolve$default(Lokio/Path;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;
    .locals 0

    .line 87
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 128
    const/4 p2, 0x0

    .line 87
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/Path;->resolve(Ljava/lang/String;Z)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic resolve$default(Lokio/Path;Lokio/ByteString;ZILjava/lang/Object;)Lokio/Path;
    .locals 0

    .line 90
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 128
    const/4 p2, 0x0

    .line 90
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/Path;->resolve(Lokio/ByteString;Z)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic resolve$default(Lokio/Path;Lokio/Path;ZILjava/lang/Object;)Lokio/Path;
    .locals 0

    .line 93
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 128
    const/4 p2, 0x0

    .line 93
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/Path;->resolve(Lokio/Path;Z)Lokio/Path;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 41
    move-object v0, p1

    check-cast v0, Lokio/Path;

    invoke-virtual {p0, v0}, Lokio/Path;->compareTo(Lokio/Path;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lokio/Path;)I
    .locals 4
    .param p1, "other"    # Lokio/Path;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    move-object v0, p0

    .local v0, "$this$commonCompareTo$iv":Lokio/Path;
    const/4 v1, 0x0

    .line 297
    .local v1, "$i$f$commonCompareTo":I
    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokio/ByteString;->compareTo(Lokio/ByteString;)I

    move-result v0

    .line 105
    .end local v0    # "$this$commonCompareTo$iv":Lokio/Path;
    .end local v1    # "$i$f$commonCompareTo":I
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 107
    move-object v0, p0

    .local v0, "$this$commonEquals$iv":Lokio/Path;
    const/4 v1, 0x0

    .line 298
    .local v1, "$i$f$commonEquals":I
    instance-of v2, p1, Lokio/Path;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lokio/Path;

    invoke-virtual {v2}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 107
    .end local v0    # "$this$commonEquals$iv":Lokio/Path;
    .end local v1    # "$i$f$commonEquals":I
    :goto_0
    return v2
.end method

.method public final getBytes$okio()Lokio/ByteString;
    .locals 1

    .line 42
    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    return-object v0
.end method

.method public final getRoot()Lokio/Path;
    .locals 6

    .line 45
    move-object v0, p0

    .local v0, "$this$commonRoot$iv":Lokio/Path;
    const/4 v1, 0x0

    .line 129
    .local v1, "$i$f$commonRoot":I
    invoke-static {v0}, Lokio/internal/_PathKt;->access$rootLength(Lokio/Path;)I

    move-result v2

    .line 130
    .local v2, "rootLength$iv":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 131
    :cond_0
    new-instance v3, Lokio/Path;

    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v4

    invoke-direct {v3, v4}, Lokio/Path;-><init>(Lokio/ByteString;)V

    .line 129
    .end local v2    # "rootLength$iv":I
    :goto_0
    nop

    .line 45
    .end local v0    # "$this$commonRoot$iv":Lokio/Path;
    .end local v1    # "$i$f$commonRoot":I
    return-object v3
.end method

.method public final getSegments()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    move-object v0, p0

    .local v0, "$this$commonSegments$iv":Lokio/Path;
    const/4 v1, 0x0

    .line 132
    .local v1, "$i$f$commonSegments":I
    move-object v2, v0

    .local v2, "$this$commonSegmentsBytes$iv$iv":Lokio/Path;
    const/4 v3, 0x0

    .line 138
    .local v3, "$i$f$commonSegmentsBytes":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 139
    .local v4, "result$iv$iv":Ljava/util/List;
    invoke-static {v2}, Lokio/internal/_PathKt;->access$rootLength(Lokio/Path;)I

    move-result v5

    .line 142
    .local v5, "segmentStart$iv$iv":I
    const/4 v6, -0x1

    const/16 v7, 0x5c

    if-ne v5, v6, :cond_0

    .line 143
    const/4 v5, 0x0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v2}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lokio/ByteString;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v2}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v6

    invoke-virtual {v6, v5}, Lokio/ByteString;->getByte(I)B

    move-result v6

    int-to-byte v8, v7

    if-ne v6, v8, :cond_1

    .line 145
    add-int/lit8 v5, v5, 0x1

    .line 148
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lokio/ByteString;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    move v8, v5

    .end local v5    # "segmentStart$iv$iv":I
    .local v8, "segmentStart$iv$iv":I
    :cond_2
    move v9, v5

    .local v9, "i$iv$iv":I
    add-int/lit8 v5, v5, 0x1

    .line 149
    invoke-virtual {v2}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v10

    invoke-virtual {v10, v9}, Lokio/ByteString;->getByte(I)B

    move-result v10

    const/16 v11, 0x2f

    int-to-byte v11, v11

    if-eq v10, v11, :cond_3

    invoke-virtual {v2}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v10

    invoke-virtual {v10, v9}, Lokio/ByteString;->getByte(I)B

    move-result v10

    int-to-byte v11, v7

    if-ne v10, v11, :cond_4

    .line 150
    :cond_3
    move-object v10, v4

    check-cast v10, Ljava/util/Collection;

    invoke-virtual {v2}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v8, v9, 0x1

    .line 148
    :cond_4
    if-lt v5, v6, :cond_2

    move v5, v8

    .line 155
    .end local v8    # "segmentStart$iv$iv":I
    .end local v9    # "i$iv$iv":I
    .restart local v5    # "segmentStart$iv$iv":I
    :cond_5
    invoke-virtual {v2}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lokio/ByteString;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 156
    move-object v6, v4

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v2}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v7

    invoke-virtual {v2}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v8

    invoke-virtual {v8}, Lokio/ByteString;->size()I

    move-result v8

    invoke-virtual {v7, v5, v8}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_6
    nop

    .end local v2    # "$this$commonSegmentsBytes$iv$iv":Lokio/Path;
    .end local v3    # "$i$f$commonSegmentsBytes":I
    .end local v4    # "result$iv$iv":Ljava/util/List;
    .end local v5    # "segmentStart$iv$iv":I
    move-object v2, v4

    check-cast v2, Ljava/lang/Iterable;

    .line 132
    nop

    .local v2, "$this$map$iv$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 160
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapTo$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 161
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 162
    .local v8, "item$iv$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lokio/ByteString;

    .local v9, "it$iv":Lokio/ByteString;
    const/4 v10, 0x0

    .line 132
    .local v10, "$i$a$-map-_PathKt$commonSegments$1$iv":I
    invoke-virtual {v9}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v9

    .end local v9    # "it$iv":Lokio/ByteString;
    .end local v10    # "$i$a$-map-_PathKt$commonSegments$1$iv":I
    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v8    # "item$iv$iv$iv":Ljava/lang/Object;
    goto :goto_1

    .line 163
    :cond_7
    nop

    .end local v4    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 160
    nop

    .line 132
    .end local v2    # "$this$map$iv$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map":I
    nop

    .line 48
    .end local v0    # "$this$commonSegments$iv":Lokio/Path;
    .end local v1    # "$i$f$commonSegments":I
    return-object v4
.end method

.method public final getSegmentsBytes()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation

    .line 51
    move-object v0, p0

    .local v0, "$this$commonSegmentsBytes$iv":Lokio/Path;
    const/4 v1, 0x0

    .line 164
    .local v1, "$i$f$commonSegmentsBytes":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 165
    .local v2, "result$iv":Ljava/util/List;
    invoke-static {v0}, Lokio/internal/_PathKt;->access$rootLength(Lokio/Path;)I

    move-result v3

    .line 168
    .local v3, "segmentStart$iv":I
    const/4 v4, -0x1

    const/16 v5, 0x5c

    if-ne v3, v4, :cond_0

    .line 169
    const/4 v3, 0x0

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokio/ByteString;->getByte(I)B

    move-result v4

    int-to-byte v6, v5

    if-ne v4, v6, :cond_1

    .line 171
    add-int/lit8 v3, v3, 0x1

    .line 174
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    move v6, v3

    .end local v3    # "segmentStart$iv":I
    .local v6, "segmentStart$iv":I
    :cond_2
    move v7, v3

    .local v7, "i$iv":I
    add-int/lit8 v3, v3, 0x1

    .line 175
    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v8

    invoke-virtual {v8, v7}, Lokio/ByteString;->getByte(I)B

    move-result v8

    const/16 v9, 0x2f

    int-to-byte v9, v9

    if-eq v8, v9, :cond_3

    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v8

    invoke-virtual {v8, v7}, Lokio/ByteString;->getByte(I)B

    move-result v8

    int-to-byte v9, v5

    if-ne v8, v9, :cond_4

    .line 176
    :cond_3
    move-object v8, v2

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v6, v7, 0x1

    .line 174
    :cond_4
    if-lt v3, v4, :cond_2

    move v3, v6

    .line 181
    .end local v6    # "segmentStart$iv":I
    .end local v7    # "i$iv":I
    .restart local v3    # "segmentStart$iv":I
    :cond_5
    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 182
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lokio/ByteString;->size()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_6
    nop

    .line 51
    .end local v0    # "$this$commonSegmentsBytes$iv":Lokio/Path;
    .end local v1    # "$i$f$commonSegmentsBytes":I
    .end local v2    # "result$iv":Ljava/util/List;
    .end local v3    # "segmentStart$iv":I
    return-object v2
.end method

.method public hashCode()I
    .locals 3

    .line 109
    move-object v0, p0

    .local v0, "$this$commonHashCode$iv":Lokio/Path;
    const/4 v1, 0x0

    .line 299
    .local v1, "$i$f$commonHashCode":I
    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v0

    .line 109
    .end local v0    # "$this$commonHashCode$iv":Lokio/Path;
    .end local v1    # "$i$f$commonHashCode":I
    return v0
.end method

.method public final isAbsolute()Z
    .locals 4

    .line 54
    move-object v0, p0

    .local v0, "$this$commonIsAbsolute$iv":Lokio/Path;
    const/4 v1, 0x0

    .line 186
    .local v1, "$i$f$commonIsAbsolute":I
    invoke-static {v0}, Lokio/internal/_PathKt;->access$rootLength(Lokio/Path;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 54
    .end local v0    # "$this$commonIsAbsolute$iv":Lokio/Path;
    .end local v1    # "$i$f$commonIsAbsolute":I
    :goto_0
    return v2
.end method

.method public final isRelative()Z
    .locals 4

    .line 57
    move-object v0, p0

    .local v0, "$this$commonIsRelative$iv":Lokio/Path;
    const/4 v1, 0x0

    .line 187
    .local v1, "$i$f$commonIsRelative":I
    invoke-static {v0}, Lokio/internal/_PathKt;->access$rootLength(Lokio/Path;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 57
    .end local v0    # "$this$commonIsRelative$iv":Lokio/Path;
    .end local v1    # "$i$f$commonIsRelative":I
    :goto_0
    return v2
.end method

.method public final isRoot()Z
    .locals 4

    .line 76
    move-object v0, p0

    .local v0, "$this$commonIsRoot$iv":Lokio/Path;
    const/4 v1, 0x0

    .line 225
    .local v1, "$i$f$commonIsRoot":I
    invoke-static {v0}, Lokio/internal/_PathKt;->access$rootLength(Lokio/Path;)I

    move-result v2

    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 76
    .end local v0    # "$this$commonIsRoot$iv":Lokio/Path;
    .end local v1    # "$i$f$commonIsRoot":I
    :goto_0
    return v2
.end method

.method public final name()Ljava/lang/String;
    .locals 3

    .line 69
    move-object v0, p0

    .local v0, "$this$commonName$iv":Lokio/Path;
    const/4 v1, 0x0

    .line 199
    .local v1, "$i$f$commonName":I
    invoke-virtual {v0}, Lokio/Path;->nameBytes()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    .line 69
    .end local v0    # "$this$commonName$iv":Lokio/Path;
    .end local v1    # "$i$f$commonName":I
    return-object v0
.end method

.method public final nameBytes()Lokio/ByteString;
    .locals 8

    .line 65
    move-object v0, p0

    .local v0, "$this$commonNameBytes$iv":Lokio/Path;
    const/4 v1, 0x0

    .line 194
    .local v1, "$i$f$commonNameBytes":I
    invoke-static {v0}, Lokio/internal/_PathKt;->access$getIndexOfLastSlash(Lokio/Path;)I

    move-result v2

    .line 195
    .local v2, "lastSlash$iv":I
    nop

    .line 196
    const/4 v3, -0x1

    const/4 v4, 0x2

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v4, v7}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v3

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {v0}, Lokio/Path;->volumeLetter()Ljava/lang/Character;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    sget-object v3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v3

    .line 195
    :goto_0
    nop

    .line 65
    .end local v0    # "$this$commonNameBytes$iv":Lokio/Path;
    .end local v1    # "$i$f$commonNameBytes":I
    .end local v2    # "lastSlash$iv":I
    return-object v3
.end method

.method public final normalized()Lokio/Path;
    .locals 5

    .line 98
    move-object v0, p0

    .local v0, "$this$commonNormalized$iv":Lokio/Path;
    const/4 v1, 0x0

    .line 296
    .local v1, "$i$f$commonNormalized":I
    sget-object v2, Lokio/Path;->Companion:Lokio/Path$Companion;

    invoke-virtual {v0}, Lokio/Path;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lokio/Path$Companion;->get(Ljava/lang/String;Z)Lokio/Path;

    move-result-object v0

    .line 98
    .end local v0    # "$this$commonNormalized$iv":Lokio/Path;
    .end local v1    # "$i$f$commonNormalized":I
    return-object v0
.end method

.method public final parent()Lokio/Path;
    .locals 9

    .line 73
    move-object v0, p0

    .local v0, "$this$commonParent$iv":Lokio/Path;
    const/4 v1, 0x0

    .line 200
    .local v1, "$i$f$commonParent":I
    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v2

    invoke-static {}, Lokio/internal/_PathKt;->access$getDOT$p()Lokio/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v2

    invoke-static {}, Lokio/internal/_PathKt;->access$getSLASH$p()Lokio/ByteString;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v2

    invoke-static {}, Lokio/internal/_PathKt;->access$getBACKSLASH$p()Lokio/ByteString;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v0}, Lokio/internal/_PathKt;->access$lastSegmentIsDotDot(Lokio/Path;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 204
    :cond_0
    invoke-static {v0}, Lokio/internal/_PathKt;->access$getIndexOfLastSlash(Lokio/Path;)I

    move-result v2

    .line 205
    .local v2, "lastSlash$iv":I
    nop

    .line 206
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v4, :cond_2

    invoke-virtual {v0}, Lokio/Path;->volumeLetter()Ljava/lang/Character;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 207
    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    const/4 v7, 0x3

    if-ne v4, v7, :cond_1

    goto/16 :goto_1

    .line 208
    :cond_1
    new-instance v4, Lokio/Path;

    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v8

    invoke-static {v8, v5, v7, v6, v3}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v3

    invoke-direct {v4, v3}, Lokio/Path;-><init>(Lokio/ByteString;)V

    move-object v3, v4

    goto :goto_1

    .line 210
    :cond_2
    if-ne v2, v6, :cond_3

    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v7

    invoke-static {}, Lokio/internal/_PathKt;->access$getBACKSLASH$p()Lokio/ByteString;

    move-result-object v8

    invoke-virtual {v7, v8}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 211
    goto :goto_1

    .line 213
    :cond_3
    const/4 v7, -0x1

    if-ne v2, v7, :cond_5

    invoke-virtual {v0}, Lokio/Path;->volumeLetter()Ljava/lang/Character;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 214
    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lokio/ByteString;->size()I

    move-result v7

    if-ne v7, v4, :cond_4

    goto :goto_1

    .line 215
    :cond_4
    new-instance v7, Lokio/Path;

    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v8

    invoke-static {v8, v5, v4, v6, v3}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v3

    invoke-direct {v7, v3}, Lokio/Path;-><init>(Lokio/ByteString;)V

    move-object v3, v7

    goto :goto_1

    .line 217
    :cond_5
    if-ne v2, v7, :cond_6

    .line 218
    new-instance v3, Lokio/Path;

    invoke-static {}, Lokio/internal/_PathKt;->access$getDOT$p()Lokio/ByteString;

    move-result-object v4

    invoke-direct {v3, v4}, Lokio/Path;-><init>(Lokio/ByteString;)V

    goto :goto_1

    .line 220
    :cond_6
    if-nez v2, :cond_7

    .line 221
    new-instance v4, Lokio/Path;

    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v7

    invoke-static {v7, v5, v6, v6, v3}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v3

    invoke-direct {v4, v3}, Lokio/Path;-><init>(Lokio/ByteString;)V

    move-object v3, v4

    goto :goto_1

    .line 224
    :cond_7
    new-instance v4, Lokio/Path;

    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v7

    invoke-static {v7, v5, v2, v6, v3}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v3

    invoke-direct {v4, v3}, Lokio/Path;-><init>(Lokio/ByteString;)V

    move-object v3, v4

    goto :goto_1

    .line 201
    .end local v2    # "lastSlash$iv":I
    :cond_8
    :goto_0
    nop

    .line 73
    .end local v0    # "$this$commonParent$iv":Lokio/Path;
    .end local v1    # "$i$f$commonParent":I
    :goto_1
    return-object v3
.end method

.method public final relativeTo(Lokio/Path;)Lokio/Path;
    .locals 14
    .param p1, "other"    # Lokio/Path;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    move-object v0, p0

    .local v0, "$this$commonRelativeTo$iv":Lokio/Path;
    const/4 v1, 0x0

    .line 260
    .local v1, "$i$f$commonRelativeTo":I
    invoke-virtual {v0}, Lokio/Path;->getRoot()Lokio/Path;

    move-result-object v2

    invoke-virtual {p1}, Lokio/Path;->getRoot()Lokio/Path;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, " and "

    if-eqz v2, :cond_9

    .line 264
    invoke-virtual {v0}, Lokio/Path;->getSegmentsBytes()Ljava/util/List;

    move-result-object v2

    .line 265
    .local v2, "thisSegments$iv":Ljava/util/List;
    invoke-virtual {p1}, Lokio/Path;->getSegmentsBytes()Ljava/util/List;

    move-result-object v4

    .line 268
    .local v4, "otherSegments$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 269
    .local v5, "firstNewSegmentIndex$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 270
    .local v6, "minSegmentsSize$iv":I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 271
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 273
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 276
    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v9

    invoke-virtual {v9}, Lokio/ByteString;->size()I

    move-result v9

    invoke-virtual {p1}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v10

    invoke-virtual {v10}, Lokio/ByteString;->size()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 278
    sget-object v3, Lokio/Path;->Companion:Lokio/Path$Companion;

    const-string v9, "."

    const/4 v10, 0x0

    invoke-static {v3, v9, v7, v8, v10}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v3

    goto :goto_2

    .line 281
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v4, v5, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-static {}, Lokio/internal/_PathKt;->access$getDOT_DOT$p()Lokio/ByteString;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    move v9, v8

    goto :goto_1

    :cond_2
    move v9, v7

    :goto_1
    if-eqz v9, :cond_8

    .line 285
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 286
    .local v3, "buffer$iv":Lokio/Buffer;
    invoke-static {p1}, Lokio/internal/_PathKt;->access$getSlash(Lokio/Path;)Lokio/ByteString;

    move-result-object v9

    if-nez v9, :cond_3

    invoke-static {v0}, Lokio/internal/_PathKt;->access$getSlash(Lokio/Path;)Lokio/ByteString;

    move-result-object v9

    if-nez v9, :cond_3

    sget-object v9, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    invoke-static {v9}, Lokio/internal/_PathKt;->access$toSlash(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v9

    .line 287
    .local v9, "slash$iv":Lokio/ByteString;
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_5

    move v11, v5

    :cond_4
    move v12, v11

    .local v12, "i$iv":I
    add-int/2addr v11, v8

    .line 288
    invoke-static {}, Lokio/internal/_PathKt;->access$getDOT_DOT$p()Lokio/ByteString;

    move-result-object v13

    invoke-virtual {v3, v13}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 289
    invoke-virtual {v3, v9}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 287
    if-lt v11, v10, :cond_4

    .line 291
    .end local v12    # "i$iv":I
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_7

    move v11, v5

    :cond_6
    move v12, v11

    .restart local v12    # "i$iv":I
    add-int/2addr v11, v8

    .line 292
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lokio/ByteString;

    invoke-virtual {v3, v13}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 293
    invoke-virtual {v3, v9}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 291
    if-lt v11, v10, :cond_6

    .line 295
    .end local v12    # "i$iv":I
    :cond_7
    invoke-static {v3, v7}, Lokio/internal/_PathKt;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object v7

    move-object v3, v7

    .line 96
    .end local v0    # "$this$commonRelativeTo$iv":Lokio/Path;
    .end local v1    # "$i$f$commonRelativeTo":I
    .end local v2    # "thisSegments$iv":Ljava/util/List;
    .end local v3    # "buffer$iv":Lokio/Buffer;
    .end local v4    # "otherSegments$iv":Ljava/util/List;
    .end local v5    # "firstNewSegmentIndex$iv":I
    .end local v6    # "minSegmentsSize$iv":I
    .end local v9    # "slash$iv":Lokio/ByteString;
    :goto_2
    return-object v3

    .line 281
    .restart local v0    # "$this$commonRelativeTo$iv":Lokio/Path;
    .restart local v1    # "$i$f$commonRelativeTo":I
    .restart local v2    # "thisSegments$iv":Ljava/util/List;
    .restart local v4    # "otherSegments$iv":Ljava/util/List;
    .restart local v5    # "firstNewSegmentIndex$iv":I
    .restart local v6    # "minSegmentsSize$iv":I
    :cond_8
    const/4 v7, 0x0

    .line 282
    .local v7, "$i$a$-require-_PathKt$commonRelativeTo$2$iv":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Impossible relative path to resolve: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 281
    .end local v7    # "$i$a$-require-_PathKt$commonRelativeTo$2$iv":I
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 260
    .end local v2    # "thisSegments$iv":Ljava/util/List;
    .end local v4    # "otherSegments$iv":Ljava/util/List;
    .end local v5    # "firstNewSegmentIndex$iv":I
    .end local v6    # "minSegmentsSize$iv":I
    :cond_9
    const/4 v2, 0x0

    .line 261
    .local v2, "$i$a$-require-_PathKt$commonRelativeTo$1$iv":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Paths of different roots cannot be relative to each other: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    .end local v2    # "$i$a$-require-_PathKt$commonRelativeTo$1$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method public final resolve(Ljava/lang/String;)Lokio/Path;
    .locals 7
    .param p1, "child"    # Ljava/lang/String;

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    .local v0, "normalize$iv":Z
    move-object v1, p0

    .local v1, "$this$commonResolve$iv":Lokio/Path;
    const/4 v2, 0x0

    .line 226
    .local v2, "$i$f$commonResolve":I
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    invoke-virtual {v3, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v3

    .local v3, "child$iv$iv":Lokio/Buffer;
    move-object v4, v1

    .local v4, "$this$commonResolve$iv$iv":Lokio/Path;
    const/4 v5, 0x0

    .line 236
    .local v5, "$i$f$commonResolve":I
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lokio/internal/_PathKt;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object v6

    invoke-static {v4, v6, v0}, Lokio/internal/_PathKt;->commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    move-result-object v3

    .line 226
    .end local v3    # "child$iv$iv":Lokio/Buffer;
    .end local v4    # "$this$commonResolve$iv$iv":Lokio/Path;
    .end local v5    # "$i$f$commonResolve":I
    nop

    .line 79
    .end local v0    # "normalize$iv":Z
    .end local v1    # "$this$commonResolve$iv":Lokio/Path;
    .end local v2    # "$i$f$commonResolve":I
    return-object v3
.end method

.method public final resolve(Ljava/lang/String;Z)Lokio/Path;
    .locals 6
    .param p1, "child"    # Ljava/lang/String;
    .param p2, "normalize"    # Z

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    move-object v0, p0

    .local v0, "$this$commonResolve$iv":Lokio/Path;
    const/4 v1, 0x0

    .line 243
    .local v1, "$i$f$commonResolve":I
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    invoke-virtual {v2, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v2

    .local v2, "child$iv$iv":Lokio/Buffer;
    move-object v3, v0

    .local v3, "$this$commonResolve$iv$iv":Lokio/Path;
    const/4 v4, 0x0

    .line 253
    .local v4, "$i$f$commonResolve":I
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lokio/internal/_PathKt;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object v5

    invoke-static {v3, v5, p2}, Lokio/internal/_PathKt;->commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    move-result-object v2

    .line 243
    .end local v2    # "child$iv$iv":Lokio/Buffer;
    .end local v3    # "$this$commonResolve$iv$iv":Lokio/Path;
    .end local v4    # "$i$f$commonResolve":I
    nop

    .line 88
    .end local v0    # "$this$commonResolve$iv":Lokio/Path;
    .end local v1    # "$i$f$commonResolve":I
    return-object v2
.end method

.method public final resolve(Lokio/ByteString;)Lokio/Path;
    .locals 7
    .param p1, "child"    # Lokio/ByteString;

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    .local v0, "normalize$iv":Z
    move-object v1, p0

    .local v1, "$this$commonResolve$iv":Lokio/Path;
    const/4 v2, 0x0

    .line 237
    .local v2, "$i$f$commonResolve":I
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    invoke-virtual {v3, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v3

    .local v3, "child$iv$iv":Lokio/Buffer;
    move-object v4, v1

    .local v4, "$this$commonResolve$iv$iv":Lokio/Path;
    const/4 v5, 0x0

    .line 242
    .local v5, "$i$f$commonResolve":I
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lokio/internal/_PathKt;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object v6

    invoke-static {v4, v6, v0}, Lokio/internal/_PathKt;->commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    move-result-object v3

    .line 237
    .end local v3    # "child$iv$iv":Lokio/Buffer;
    .end local v4    # "$this$commonResolve$iv$iv":Lokio/Path;
    .end local v5    # "$i$f$commonResolve":I
    nop

    .line 82
    .end local v0    # "normalize$iv":Z
    .end local v1    # "$this$commonResolve$iv":Lokio/Path;
    .end local v2    # "$i$f$commonResolve":I
    return-object v3
.end method

.method public final resolve(Lokio/ByteString;Z)Lokio/Path;
    .locals 6
    .param p1, "child"    # Lokio/ByteString;
    .param p2, "normalize"    # Z

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    move-object v0, p0

    .local v0, "$this$commonResolve$iv":Lokio/Path;
    const/4 v1, 0x0

    .line 254
    .local v1, "$i$f$commonResolve":I
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    invoke-virtual {v2, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v2

    .local v2, "child$iv$iv":Lokio/Buffer;
    move-object v3, v0

    .local v3, "$this$commonResolve$iv$iv":Lokio/Path;
    const/4 v4, 0x0

    .line 259
    .local v4, "$i$f$commonResolve":I
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lokio/internal/_PathKt;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object v5

    invoke-static {v3, v5, p2}, Lokio/internal/_PathKt;->commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    move-result-object v2

    .line 254
    .end local v2    # "child$iv$iv":Lokio/Buffer;
    .end local v3    # "$this$commonResolve$iv$iv":Lokio/Path;
    .end local v4    # "$i$f$commonResolve":I
    nop

    .line 91
    .end local v0    # "$this$commonResolve$iv":Lokio/Path;
    .end local v1    # "$i$f$commonResolve":I
    return-object v2
.end method

.method public final resolve(Lokio/Path;)Lokio/Path;
    .locals 1
    .param p1, "child"    # Lokio/Path;

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lokio/internal/_PathKt;->commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    move-result-object v0

    return-object v0
.end method

.method public final resolve(Lokio/Path;Z)Lokio/Path;
    .locals 1
    .param p1, "child"    # Lokio/Path;
    .param p2, "normalize"    # Z

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-static {p0, p1, p2}, Lokio/internal/_PathKt;->commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    move-result-object v0

    return-object v0
.end method

.method public final toFile()Ljava/io/File;
    .locals 2

    .line 100
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lokio/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final toNioPath()Ljava/nio/file/Path;
    .locals 2

    .line 103
    invoke-virtual {p0}, Lokio/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const-string v1, "get(toString())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 111
    move-object v0, p0

    .local v0, "$this$commonToString$iv":Lokio/Path;
    const/4 v1, 0x0

    .line 300
    .local v1, "$i$f$commonToString":I
    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    .line 111
    .end local v0    # "$this$commonToString$iv":Lokio/Path;
    .end local v1    # "$i$f$commonToString":I
    return-object v0
.end method

.method public final volumeLetter()Ljava/lang/Character;
    .locals 7

    .line 61
    move-object v0, p0

    .local v0, "$this$commonVolumeLetter$iv":Lokio/Path;
    const/4 v1, 0x0

    .line 188
    .local v1, "$i$f$commonVolumeLetter":I
    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v2

    invoke-static {}, Lokio/internal/_PathKt;->access$getSLASH$p()Lokio/ByteString;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lokio/ByteString;->indexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 189
    :cond_0
    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    if-ge v2, v5, :cond_1

    goto :goto_1

    .line 190
    :cond_1
    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lokio/ByteString;->getByte(I)B

    move-result v2

    const/16 v5, 0x3a

    int-to-byte v5, v5

    if-eq v2, v5, :cond_2

    goto :goto_1

    .line 191
    :cond_2
    invoke-virtual {v0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2, v4}, Lokio/ByteString;->getByte(I)B

    move-result v2

    int-to-char v2, v2

    .line 192
    .local v2, "c$iv":C
    const/16 v5, 0x61

    if-gt v5, v2, :cond_3

    const/16 v5, 0x7a

    if-gt v2, v5, :cond_3

    move v5, v3

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_0
    if-nez v5, :cond_5

    const/16 v5, 0x41

    if-gt v5, v2, :cond_4

    const/16 v5, 0x5a

    if-gt v2, v5, :cond_4

    move v4, v3

    :cond_4
    if-nez v4, :cond_5

    goto :goto_1

    .line 193
    :cond_5
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    .line 61
    .end local v0    # "$this$commonVolumeLetter$iv":Lokio/Path;
    .end local v1    # "$i$f$commonVolumeLetter":I
    .end local v2    # "c$iv":C
    :goto_1
    return-object v6
.end method
