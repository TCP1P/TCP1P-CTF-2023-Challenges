.class final Lokio/internal/ZipKt$readOrSkipLocalHeader$1;
.super Lkotlin/jvm/internal/Lambda;
.source "zip.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/ZipKt;->readOrSkipLocalHeader(Lokio/BufferedSource;Lokio/FileMetadata;)Lokio/FileMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "headerId",
        "",
        "dataSize",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $createdAtMillis:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $lastAccessedAtMillis:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $lastModifiedAtMillis:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_readOrSkipLocalHeader:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/BufferedSource;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lokio/internal/ZipKt$readOrSkipLocalHeader$1;->$this_readOrSkipLocalHeader:Lokio/BufferedSource;

    iput-object p2, p0, Lokio/internal/ZipKt$readOrSkipLocalHeader$1;->$lastModifiedAtMillis:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lokio/internal/ZipKt$readOrSkipLocalHeader$1;->$lastAccessedAtMillis:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lokio/internal/ZipKt$readOrSkipLocalHeader$1;->$createdAtMillis:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 399
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lokio/internal/ZipKt$readOrSkipLocalHeader$1;->invoke(IJ)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(IJ)V
    .locals 12
    .param p1, "headerId"    # I
    .param p2, "dataSize"    # J

    .line 400
    nop

    .line 401
    const/16 v0, 0x5455

    if-ne p1, v0, :cond_a

    .line 402
    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    const-string v1, "bad zip: extended timestamp extra too short"

    if-ltz v0, :cond_9

    .line 405
    iget-object v0, p0, Lokio/internal/ZipKt$readOrSkipLocalHeader$1;->$this_readOrSkipLocalHeader:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 407
    .local v0, "flags":I
    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 408
    .local v2, "hasLastModifiedAtMillis":Z
    :goto_0
    and-int/lit8 v5, v0, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    .line 409
    .local v5, "hasLastAccessedAtMillis":Z
    :goto_1
    and-int/lit8 v6, v0, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    move v3, v4

    .line 410
    .local v3, "hasCreatedAtMillis":Z
    :cond_2
    iget-object v4, p0, Lokio/internal/ZipKt$readOrSkipLocalHeader$1;->$this_readOrSkipLocalHeader:Lokio/BufferedSource;

    .local v4, "$this$invoke_u24lambda_u2d0":Lokio/BufferedSource;
    const/4 v6, 0x0

    .line 411
    .local v6, "$i$a$-run-ZipKt$readOrSkipLocalHeader$1$requiredSize$1":I
    const-wide/16 v7, 0x1

    .line 412
    .local v7, "result":J
    const-wide/16 v9, 0x4

    if-eqz v2, :cond_3

    add-long/2addr v7, v9

    .line 413
    :cond_3
    if-eqz v5, :cond_4

    add-long/2addr v7, v9

    .line 414
    :cond_4
    if-eqz v3, :cond_5

    add-long/2addr v7, v9

    .line 415
    :cond_5
    nop

    .line 410
    .end local v4    # "$this$invoke_u24lambda_u2d0":Lokio/BufferedSource;
    .end local v6    # "$i$a$-run-ZipKt$readOrSkipLocalHeader$1$requiredSize$1":I
    .end local v7    # "result":J
    move-wide v6, v7

    .line 417
    .local v6, "requiredSize":J
    cmp-long v4, p2, v6

    if-ltz v4, :cond_8

    .line 421
    const-wide/16 v8, 0x3e8

    if-eqz v2, :cond_6

    iget-object v1, p0, Lokio/internal/ZipKt$readOrSkipLocalHeader$1;->$lastModifiedAtMillis:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lokio/internal/ZipKt$readOrSkipLocalHeader$1;->$this_readOrSkipLocalHeader:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readIntLe()I

    move-result v4

    int-to-long v10, v4

    mul-long/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 422
    :cond_6
    if-eqz v5, :cond_7

    iget-object v1, p0, Lokio/internal/ZipKt$readOrSkipLocalHeader$1;->$lastAccessedAtMillis:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lokio/internal/ZipKt$readOrSkipLocalHeader$1;->$this_readOrSkipLocalHeader:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readIntLe()I

    move-result v4

    int-to-long v10, v4

    mul-long/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 423
    :cond_7
    if-eqz v3, :cond_a

    iget-object v1, p0, Lokio/internal/ZipKt$readOrSkipLocalHeader$1;->$createdAtMillis:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lokio/internal/ZipKt$readOrSkipLocalHeader$1;->$this_readOrSkipLocalHeader:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readIntLe()I

    move-result v4

    int-to-long v10, v4

    mul-long/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_2

    .line 418
    :cond_8
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 403
    .end local v0    # "flags":I
    .end local v2    # "hasLastModifiedAtMillis":Z
    .end local v3    # "hasCreatedAtMillis":Z
    .end local v5    # "hasLastAccessedAtMillis":Z
    .end local v6    # "requiredSize":J
    :cond_9
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_a
    :goto_2
    return-void
.end method
