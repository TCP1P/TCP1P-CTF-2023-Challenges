.class public final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source "SegmentedByteString.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegmentedByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n+ 2 -SegmentedByteString.kt\nokio/internal/_SegmentedByteStringKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,140:1\n60#2,12:141\n60#2,12:153\n101#2,2:165\n103#2,26:168\n132#2,5:194\n139#2:199\n142#2,3:200\n60#2,8:203\n145#2,6:211\n68#2,4:217\n151#2:221\n60#2,12:222\n155#2:234\n82#2,10:235\n156#2,9:245\n92#2,4:254\n165#2,2:258\n174#2,4:260\n82#2,10:264\n178#2,3:274\n92#2,4:277\n181#2:281\n190#2,8:282\n82#2,10:290\n198#2,3:300\n92#2,4:303\n201#2:307\n210#2,5:308\n82#2,10:313\n215#2,3:323\n92#2,4:326\n218#2:330\n221#2,4:331\n229#2,6:335\n60#2,8:341\n235#2,7:349\n68#2,4:356\n242#2,2:360\n1#3:167\n*S KotlinDebug\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n*L\n54#1:141,12\n66#1:153,12\n78#1:165,2\n78#1:168,26\n80#1:194,5\n82#1:199\n84#1:200,3\n84#1:203,8\n84#1:211,6\n84#1:217,4\n84#1:221\n90#1:222,12\n96#1:234\n96#1:235,10\n96#1:245,9\n96#1:254,4\n96#1:258,2\n103#1:260,4\n103#1:264,10\n103#1:274,3\n103#1:277,4\n103#1:281\n110#1:282,8\n110#1:290,10\n110#1:300,3\n110#1:303,4\n110#1:307\n117#1:308,5\n117#1:313,10\n117#1:323,3\n117#1:326,4\n117#1:330\n131#1:331,4\n133#1:335,6\n133#1:341,8\n133#1:349,7\n133#1:356,4\n133#1:360,2\n78#1:167\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u000c\n\u0002\u0010\u0005\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0008\u0000\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J(\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0015H\u0016J\u0015\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0010H\u0010\u00a2\u0006\u0002\u0008\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\r\u0010 \u001a\u00020\u0015H\u0010\u00a2\u0006\u0002\u0008!J\u0008\u0010\"\u001a\u00020\u0015H\u0016J\u0008\u0010#\u001a\u00020\u0010H\u0016J\u001d\u0010$\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u0001H\u0010\u00a2\u0006\u0002\u0008&J\u0018\u0010\'\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0015H\u0016J\r\u0010)\u001a\u00020\u0004H\u0010\u00a2\u0006\u0002\u0008*J\u0015\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u0015H\u0010\u00a2\u0006\u0002\u0008.J\u0018\u0010/\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0015H\u0016J(\u00100\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u00101\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0015H\u0016J(\u00100\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u00012\u0006\u00101\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0015H\u0016J\u0010\u00102\u001a\u00020\u00102\u0006\u00103\u001a\u000204H\u0016J\u0018\u00105\u001a\u00020\u00012\u0006\u00106\u001a\u00020\u00152\u0006\u00107\u001a\u00020\u0015H\u0016J\u0008\u00108\u001a\u00020\u0001H\u0016J\u0008\u00109\u001a\u00020\u0001H\u0016J\u0008\u0010:\u001a\u00020\u0004H\u0016J\u0008\u0010;\u001a\u00020\u0001H\u0002J\u0008\u0010<\u001a\u00020\u0010H\u0016J\u0010\u0010=\u001a\u00020\u00132\u0006\u0010>\u001a\u00020?H\u0016J%\u0010=\u001a\u00020\u00132\u0006\u0010@\u001a\u00020A2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0015H\u0010\u00a2\u0006\u0002\u0008BJ\u0008\u0010C\u001a\u00020DH\u0002R\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006E"
    }
    d2 = {
        "Lokio/SegmentedByteString;",
        "Lokio/ByteString;",
        "segments",
        "",
        "",
        "directory",
        "",
        "([[B[I)V",
        "getDirectory$okio",
        "()[I",
        "getSegments$okio",
        "()[[B",
        "[[B",
        "asByteBuffer",
        "Ljava/nio/ByteBuffer;",
        "base64",
        "",
        "base64Url",
        "copyInto",
        "",
        "offset",
        "",
        "target",
        "targetOffset",
        "byteCount",
        "digest",
        "algorithm",
        "digest$okio",
        "equals",
        "",
        "other",
        "",
        "getSize",
        "getSize$okio",
        "hashCode",
        "hex",
        "hmac",
        "key",
        "hmac$okio",
        "indexOf",
        "fromIndex",
        "internalArray",
        "internalArray$okio",
        "internalGet",
        "",
        "pos",
        "internalGet$okio",
        "lastIndexOf",
        "rangeEquals",
        "otherOffset",
        "string",
        "charset",
        "Ljava/nio/charset/Charset;",
        "substring",
        "beginIndex",
        "endIndex",
        "toAsciiLowercase",
        "toAsciiUppercase",
        "toByteArray",
        "toByteString",
        "toString",
        "write",
        "out",
        "Ljava/io/OutputStream;",
        "buffer",
        "Lokio/Buffer;",
        "write$okio",
        "writeReplace",
        "Ljava/lang/Object;",
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
.field private final transient directory:[I

.field private final transient segments:[[B


# direct methods
.method public constructor <init>([[B[I)V
    .locals 1
    .param p1, "segments"    # [[B
    .param p2, "directory"    # [I

    const-string v0, "segments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    .line 38
    iput-object p1, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 39
    iput-object p2, p0, Lokio/SegmentedByteString;->directory:[I

    .line 37
    return-void
.end method

.method private final toByteString()Lokio/ByteString;
    .locals 2

    .line 127
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 1

    .line 138
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 86
    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, "wrap(toByteArray()).asReadOnlyBuffer()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 1

    .line 75
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64Url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public copyInto(I[BII)V
    .locals 21
    .param p1, "offset"    # I
    .param p2, "target"    # [B
    .param p3, "targetOffset"    # I
    .param p4, "byteCount"    # I

    move/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    const-string/jumbo v3, "target"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    move-object/from16 v3, p0

    .local v3, "$this$commonCopyInto$iv":Lokio/SegmentedByteString;
    const/4 v4, 0x0

    .line 308
    .local v4, "$i$f$commonCopyInto":I
    invoke-virtual {v3}, Lokio/SegmentedByteString;->size()I

    move-result v5

    int-to-long v6, v5

    int-to-long v8, v0

    int-to-long v10, v2

    invoke-static/range {v6 .. v11}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    .line 309
    array-length v5, v1

    int-to-long v6, v5

    move/from16 v5, p3

    int-to-long v8, v5

    int-to-long v10, v2

    invoke-static/range {v6 .. v11}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    .line 311
    const/4 v6, 0x0

    .local v6, "targetOffset$iv":I
    move/from16 v6, p3

    .line 312
    add-int v7, v0, v2

    .local v7, "endIndex$iv$iv":I
    move-object v8, v3

    .local v8, "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    const/4 v9, 0x0

    .line 313
    .local v9, "$i$f$forEachSegment":I
    invoke-static {v8, v0}, Lokio/internal/_SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v10

    .line 314
    .local v10, "s$iv$iv":I
    move/from16 v11, p1

    .line 315
    .local v11, "pos$iv$iv":I
    :goto_0
    if-ge v11, v7, :cond_1

    .line 316
    if-nez v10, :cond_0

    const/4 v12, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v12

    add-int/lit8 v13, v10, -0x1

    aget v12, v12, v13

    .line 317
    .local v12, "segmentOffset$iv$iv":I
    :goto_1
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v13

    aget v13, v13, v10

    sub-int/2addr v13, v12

    .line 318
    .local v13, "segmentSize$iv$iv":I
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v14

    invoke-virtual {v8}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v15

    check-cast v15, [Ljava/lang/Object;

    array-length v15, v15

    add-int/2addr v15, v10

    aget v14, v14, v15

    .line 320
    .local v14, "segmentPos$iv$iv":I
    add-int v15, v12, v13

    invoke-static {v7, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    sub-int/2addr v15, v11

    .line 321
    .local v15, "byteCount$iv$iv":I
    sub-int v16, v11, v12

    add-int v16, v14, v16

    .line 322
    .local v16, "offset$iv$iv":I
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v17

    aget-object v17, v17, v10

    .local v17, "data$iv":[B
    move/from16 v18, v15

    .local v18, "byteCount$iv":I
    move/from16 v19, v16

    .local v19, "offset$iv":I
    move-object/from16 v20, v17

    .end local v17    # "data$iv":[B
    .local v20, "data$iv":[B
    const/16 v17, 0x0

    .line 323
    .local v17, "$i$a$-forEachSegment-_SegmentedByteStringKt$commonCopyInto$1$iv":I
    move/from16 v0, v19

    .end local v19    # "offset$iv":I
    .local v0, "offset$iv":I
    add-int v2, v0, v18

    move-object/from16 v19, v3

    move-object/from16 v3, v20

    .end local v20    # "data$iv":[B
    .local v3, "data$iv":[B
    .local v19, "$this$commonCopyInto$iv":Lokio/SegmentedByteString;
    invoke-static {v3, v1, v6, v0, v2}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 324
    add-int v6, v6, v18

    .line 325
    nop

    .line 326
    .end local v0    # "offset$iv":I
    .end local v3    # "data$iv":[B
    .end local v17    # "$i$a$-forEachSegment-_SegmentedByteStringKt$commonCopyInto$1$iv":I
    .end local v18    # "byteCount$iv":I
    add-int/2addr v11, v15

    .line 327
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, p1

    move/from16 v2, p4

    move-object/from16 v3, v19

    .end local v12    # "segmentOffset$iv$iv":I
    .end local v13    # "segmentSize$iv$iv":I
    .end local v14    # "segmentPos$iv$iv":I
    .end local v15    # "byteCount$iv$iv":I
    .end local v16    # "offset$iv$iv":I
    goto :goto_0

    .line 329
    .end local v19    # "$this$commonCopyInto$iv":Lokio/SegmentedByteString;
    .local v3, "$this$commonCopyInto$iv":Lokio/SegmentedByteString;
    :cond_1
    nop

    .line 330
    .end local v7    # "endIndex$iv$iv":I
    .end local v8    # "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    .end local v9    # "$i$f$forEachSegment":I
    .end local v10    # "s$iv$iv":I
    .end local v11    # "pos$iv$iv":I
    nop

    .line 117
    .end local v3    # "$this$commonCopyInto$iv":Lokio/SegmentedByteString;
    .end local v4    # "$i$f$commonCopyInto":I
    .end local v6    # "targetOffset$iv":I
    return-void
.end method

.method public digest$okio(Ljava/lang/String;)Lokio/ByteString;
    .locals 13
    .param p1, "algorithm"    # Ljava/lang/String;

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .local v0, "$this$digest_u24lambda_u2d1":Ljava/security/MessageDigest;
    const/4 v1, 0x0

    .line 54
    .local v1, "$i$a$-run-SegmentedByteString$digest$digestBytes$1":I
    move-object v2, p0

    .local v2, "$this$forEachSegment$iv":Lokio/SegmentedByteString;
    const/4 v3, 0x0

    .line 141
    .local v3, "$i$f$forEachSegment":I
    invoke-virtual {v2}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    array-length v4, v4

    .line 142
    .local v4, "segmentCount$iv":I
    const/4 v5, 0x0

    .line 143
    .local v5, "s$iv":I
    const/4 v6, 0x0

    .line 144
    .local v6, "pos$iv":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 145
    invoke-virtual {v2}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v7

    add-int v8, v4, v5

    aget v7, v7, v8

    .line 146
    .local v7, "segmentPos$iv":I
    invoke-virtual {v2}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v8

    aget v8, v8, v5

    .line 148
    .local v8, "nextSegmentOffset$iv":I
    invoke-virtual {v2}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v9

    aget-object v9, v9, v5

    .local v9, "data":[B
    sub-int v10, v8, v6

    .local v10, "byteCount":I
    move v11, v7

    .local v11, "offset":I
    const/4 v12, 0x0

    .line 55
    .local v12, "$i$a$-forEachSegment-SegmentedByteString$digest$digestBytes$1$1":I
    invoke-virtual {v0, v9, v11, v10}, Ljava/security/MessageDigest;->update([BII)V

    .line 56
    nop

    .line 149
    .end local v9    # "data":[B
    .end local v10    # "byteCount":I
    .end local v11    # "offset":I
    .end local v12    # "$i$a$-forEachSegment-SegmentedByteString$digest$digestBytes$1$1":I
    move v6, v8

    .line 150
    add-int/lit8 v5, v5, 0x1

    .end local v7    # "segmentPos$iv":I
    .end local v8    # "nextSegmentOffset$iv":I
    goto :goto_0

    .line 152
    :cond_0
    nop

    .line 57
    .end local v2    # "$this$forEachSegment$iv":Lokio/SegmentedByteString;
    .end local v3    # "$i$f$forEachSegment":I
    .end local v4    # "segmentCount$iv":I
    .end local v5    # "s$iv":I
    .end local v6    # "pos$iv":I
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 53
    .end local v0    # "$this$digest_u24lambda_u2d1":Ljava/security/MessageDigest;
    .end local v1    # "$i$a$-run-SegmentedByteString$digest$digestBytes$1":I
    nop

    .line 59
    .local v0, "digestBytes":[B
    new-instance v1, Lokio/ByteString;

    const-string v2, "digestBytes"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lokio/ByteString;-><init>([B)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 131
    move-object v0, p0

    .local v0, "$this$commonEquals$iv":Lokio/SegmentedByteString;
    const/4 v1, 0x0

    .line 331
    .local v1, "$i$f$commonEquals":I
    nop

    .line 332
    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    instance-of v3, p1, Lokio/ByteString;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    invoke-virtual {v0}, Lokio/SegmentedByteString;->size()I

    move-result v5

    if-ne v3, v5, :cond_1

    move-object v3, p1

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/SegmentedByteString;->size()I

    move-result v5

    invoke-virtual {v0, v4, v3, v4, v5}, Lokio/SegmentedByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0

    .line 334
    :cond_2
    move v2, v4

    .line 331
    :goto_0
    nop

    .line 131
    .end local v0    # "$this$commonEquals$iv":Lokio/SegmentedByteString;
    .end local v1    # "$i$f$commonEquals":I
    return v2
.end method

.method public final getDirectory$okio()[I
    .locals 1

    .line 39
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    return-object v0
.end method

.method public final getSegments$okio()[[B
    .locals 1

    .line 38
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    return-object v0
.end method

.method public getSize$okio()I
    .locals 4

    .line 82
    move-object v0, p0

    .local v0, "$this$commonGetSize$iv":Lokio/SegmentedByteString;
    const/4 v1, 0x0

    .line 199
    .local v1, "$i$f$commonGetSize":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v2

    invoke-virtual {v0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v0, v2, v3

    .line 82
    .end local v0    # "$this$commonGetSize$iv":Lokio/SegmentedByteString;
    .end local v1    # "$i$f$commonGetSize":I
    return v0
.end method

.method public hashCode()I
    .locals 18

    .line 133
    move-object/from16 v0, p0

    .local v0, "$this$commonHashCode$iv":Lokio/SegmentedByteString;
    const/4 v1, 0x0

    .line 335
    .local v1, "$i$f$commonHashCode":I
    const/4 v2, 0x0

    .local v2, "result$iv":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getHashCode$okio()I

    move-result v2

    .line 336
    if-eqz v2, :cond_0

    goto :goto_2

    .line 339
    :cond_0
    const/4 v2, 0x1

    .line 340
    move-object v3, v0

    .local v3, "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    const/4 v4, 0x0

    .line 341
    .local v4, "$i$f$forEachSegment":I
    invoke-virtual {v3}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    array-length v5, v5

    .line 342
    .local v5, "segmentCount$iv$iv":I
    const/4 v6, 0x0

    .line 343
    .local v6, "s$iv$iv":I
    const/4 v7, 0x0

    .line 344
    .local v7, "pos$iv$iv":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 345
    invoke-virtual {v3}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v8

    add-int v9, v5, v6

    aget v8, v8, v9

    .line 346
    .local v8, "segmentPos$iv$iv":I
    invoke-virtual {v3}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v9

    aget v9, v9, v6

    .line 348
    .local v9, "nextSegmentOffset$iv$iv":I
    invoke-virtual {v3}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v10

    aget-object v10, v10, v6

    .local v10, "data$iv":[B
    sub-int v11, v9, v7

    .local v11, "byteCount$iv":I
    move v12, v8

    .local v12, "offset$iv":I
    const/4 v13, 0x0

    .line 349
    .local v13, "$i$a$-forEachSegment-_SegmentedByteStringKt$commonHashCode$1$iv":I
    move v14, v12

    .line 350
    .local v14, "i$iv":I
    add-int v15, v12, v11

    .line 351
    .local v15, "limit$iv":I
    :goto_1
    if-ge v14, v15, :cond_1

    .line 352
    mul-int/lit8 v16, v2, 0x1f

    aget-byte v17, v10, v14

    add-int v2, v16, v17

    .line 353
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 355
    :cond_1
    nop

    .line 356
    .end local v10    # "data$iv":[B
    .end local v11    # "byteCount$iv":I
    .end local v12    # "offset$iv":I
    .end local v13    # "$i$a$-forEachSegment-_SegmentedByteStringKt$commonHashCode$1$iv":I
    .end local v14    # "i$iv":I
    .end local v15    # "limit$iv":I
    move v7, v9

    .line 357
    add-int/lit8 v6, v6, 0x1

    .end local v8    # "segmentPos$iv$iv":I
    .end local v9    # "nextSegmentOffset$iv$iv":I
    goto :goto_0

    .line 359
    :cond_2
    nop

    .line 360
    .end local v3    # "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    .end local v4    # "$i$f$forEachSegment":I
    .end local v5    # "segmentCount$iv$iv":I
    .end local v6    # "s$iv$iv":I
    .end local v7    # "pos$iv$iv":I
    invoke-virtual {v0, v2}, Lokio/SegmentedByteString;->setHashCode$okio(I)V

    .line 361
    nop

    .line 133
    .end local v0    # "$this$commonHashCode$iv":Lokio/SegmentedByteString;
    .end local v1    # "$i$f$commonHashCode":I
    .end local v2    # "result$iv":I
    :goto_2
    return v2
.end method

.method public hex()Ljava/lang/String;
    .locals 1

    .line 46
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hmac$okio(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .locals 12
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lokio/ByteString;

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    nop

    .line 64
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 65
    .local v0, "mac":Ljavax/crypto/Mac;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    check-cast v1, Ljava/security/Key;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 66
    move-object v1, p0

    .local v1, "$this$forEachSegment$iv":Lokio/SegmentedByteString;
    const/4 v2, 0x0

    .line 153
    .local v2, "$i$f$forEachSegment":I
    invoke-virtual {v1}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    .line 154
    .local v3, "segmentCount$iv":I
    const/4 v4, 0x0

    .line 155
    .local v4, "s$iv":I
    const/4 v5, 0x0

    .line 156
    .local v5, "pos$iv":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 157
    invoke-virtual {v1}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v6

    add-int v7, v3, v4

    aget v6, v6, v7

    .line 158
    .local v6, "segmentPos$iv":I
    invoke-virtual {v1}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v7

    aget v7, v7, v4

    .line 160
    .local v7, "nextSegmentOffset$iv":I
    invoke-virtual {v1}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v8

    aget-object v8, v8, v4

    sub-int v9, v7, v5

    .local v8, "data":[B
    .local v9, "byteCount":I
    move v10, v6

    .local v10, "offset":I
    const/4 v11, 0x0

    .line 67
    .local v11, "$i$a$-forEachSegment-SegmentedByteString$hmac$1":I
    invoke-virtual {v0, v8, v10, v9}, Ljavax/crypto/Mac;->update([BII)V

    .line 68
    nop

    .line 161
    .end local v8    # "data":[B
    .end local v9    # "byteCount":I
    .end local v10    # "offset":I
    .end local v11    # "$i$a$-forEachSegment-SegmentedByteString$hmac$1":I
    move v5, v7

    .line 162
    add-int/lit8 v4, v4, 0x1

    .end local v6    # "segmentPos$iv":I
    .end local v7    # "nextSegmentOffset$iv":I
    goto :goto_0

    .line 164
    :cond_0
    nop

    .line 69
    .end local v1    # "$this$forEachSegment$iv":Lokio/SegmentedByteString;
    .end local v2    # "$i$f$forEachSegment":I
    .end local v3    # "segmentCount$iv":I
    .end local v4    # "s$iv":I
    .end local v5    # "pos$iv":I
    new-instance v1, Lokio/ByteString;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v2

    const-string v3, "mac.doFinal()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 70
    .end local v0    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public indexOf([BI)I
    .locals 1
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method public internalArray$okio()[B
    .locals 1

    .line 129
    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public internalGet$okio(I)B
    .locals 9
    .param p1, "pos"    # I

    .line 80
    move-object v0, p0

    .local v0, "$this$commonInternalGet$iv":Lokio/SegmentedByteString;
    const/4 v1, 0x0

    .line 194
    .local v1, "$i$f$commonInternalGet":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v2

    invoke-virtual {v0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    int-to-long v3, v2

    int-to-long v5, p1

    const-wide/16 v7, 0x1

    invoke-static/range {v3 .. v8}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    .line 195
    invoke-static {v0, p1}, Lokio/internal/_SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v2

    .line 196
    .local v2, "segment$iv":I
    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    .line 197
    .local v3, "segmentOffset$iv":I
    :goto_0
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v4

    invoke-virtual {v0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    array-length v5, v5

    add-int/2addr v5, v2

    aget v4, v4, v5

    .line 198
    .local v4, "segmentPos$iv":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v5

    aget-object v5, v5, v2

    sub-int v6, p1, v3

    add-int/2addr v6, v4

    aget-byte v0, v5, v6

    .line 80
    .end local v0    # "$this$commonInternalGet$iv":Lokio/SegmentedByteString;
    .end local v1    # "$i$f$commonInternalGet":I
    .end local v2    # "segment$iv":I
    .end local v3    # "segmentOffset$iv":I
    .end local v4    # "segmentPos$iv":I
    return v0
.end method

.method public lastIndexOf([BI)I
    .locals 1
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    .line 122
    nop

    .line 123
    nop

    .line 121
    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result v0

    .line 124
    return v0
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .locals 20
    .param p1, "offset"    # I
    .param p2, "other"    # Lokio/ByteString;
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "other"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    move-object/from16 v2, p0

    .local v2, "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    const/4 v3, 0x0

    .line 260
    .local v3, "$i$f$commonRangeEquals":I
    if-ltz v0, :cond_4

    invoke-virtual {v2}, Lokio/SegmentedByteString;->size()I

    move-result v5

    sub-int v5, v5, p4

    if-le v0, v5, :cond_0

    move-object/from16 v17, v2

    goto/16 :goto_2

    .line 262
    :cond_0
    const/4 v5, 0x0

    .local v5, "otherOffset$iv":I
    move/from16 v5, p3

    .line 263
    add-int v6, v0, p4

    .local v6, "endIndex$iv$iv":I
    move-object v7, v2

    .local v7, "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    const/4 v8, 0x0

    .line 264
    .local v8, "$i$f$forEachSegment":I
    invoke-static {v7, v0}, Lokio/internal/_SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v9

    .line 265
    .local v9, "s$iv$iv":I
    move/from16 v10, p1

    .line 266
    .local v10, "pos$iv$iv":I
    :goto_0
    if-ge v10, v6, :cond_3

    .line 267
    if-nez v9, :cond_1

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v11

    add-int/lit8 v12, v9, -0x1

    aget v11, v11, v12

    .line 268
    .local v11, "segmentOffset$iv$iv":I
    :goto_1
    invoke-virtual {v7}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v12

    aget v12, v12, v9

    sub-int/2addr v12, v11

    .line 269
    .local v12, "segmentSize$iv$iv":I
    invoke-virtual {v7}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v13

    invoke-virtual {v7}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    array-length v14, v14

    add-int/2addr v14, v9

    aget v13, v13, v14

    .line 271
    .local v13, "segmentPos$iv$iv":I
    add-int v14, v11, v12

    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    sub-int/2addr v14, v10

    .line 272
    .local v14, "byteCount$iv$iv":I
    sub-int v15, v10, v11

    add-int/2addr v15, v13

    .line 273
    .local v15, "offset$iv$iv":I
    invoke-virtual {v7}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v16

    aget-object v16, v16, v9

    .local v16, "data$iv":[B
    move/from16 v17, v14

    .local v17, "byteCount$iv":I
    move/from16 v18, v15

    .local v18, "offset$iv":I
    move-object/from16 v19, v16

    .end local v16    # "data$iv":[B
    .local v19, "data$iv":[B
    const/16 v16, 0x0

    .line 274
    .local v16, "$i$a$-forEachSegment-_SegmentedByteStringKt$commonRangeEquals$1$iv":I
    move/from16 v4, v17

    move/from16 v0, v18

    move-object/from16 v17, v2

    move-object/from16 v2, v19

    .end local v18    # "offset$iv":I
    .end local v19    # "data$iv":[B
    .local v0, "offset$iv":I
    .local v2, "data$iv":[B
    .local v4, "byteCount$iv":I
    .local v17, "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    invoke-virtual {v1, v5, v2, v0, v4}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v18

    if-nez v18, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    .line 275
    :cond_2
    add-int/2addr v5, v4

    .line 276
    nop

    .line 277
    .end local v0    # "offset$iv":I
    .end local v2    # "data$iv":[B
    .end local v4    # "byteCount$iv":I
    .end local v16    # "$i$a$-forEachSegment-_SegmentedByteStringKt$commonRangeEquals$1$iv":I
    add-int/2addr v10, v14

    .line 278
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, p1

    move-object/from16 v2, v17

    .end local v11    # "segmentOffset$iv$iv":I
    .end local v12    # "segmentSize$iv$iv":I
    .end local v13    # "segmentPos$iv$iv":I
    .end local v14    # "byteCount$iv$iv":I
    .end local v15    # "offset$iv$iv":I
    goto :goto_0

    .line 280
    .end local v17    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    .local v2, "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    :cond_3
    move-object/from16 v17, v2

    .line 281
    .end local v2    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    .end local v6    # "endIndex$iv$iv":I
    .end local v7    # "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    .end local v8    # "$i$f$forEachSegment":I
    .end local v9    # "s$iv$iv":I
    .end local v10    # "pos$iv$iv":I
    .restart local v17    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    const/4 v4, 0x1

    goto :goto_3

    .line 260
    .end local v5    # "otherOffset$iv":I
    .end local v17    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    .restart local v2    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    :cond_4
    move-object/from16 v17, v2

    .end local v2    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    .restart local v17    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    :goto_2
    const/4 v4, 0x0

    .line 103
    .end local v3    # "$i$f$commonRangeEquals":I
    .end local v17    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    :goto_3
    return v4
.end method

.method public rangeEquals(I[BII)Z
    .locals 21
    .param p1, "offset"    # I
    .param p2, "other"    # [B
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    move/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "other"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    move-object/from16 v3, p0

    .local v3, "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    const/4 v4, 0x0

    .line 282
    .local v4, "$i$f$commonRangeEquals":I
    if-ltz v0, :cond_4

    invoke-virtual {v3}, Lokio/SegmentedByteString;->size()I

    move-result v6

    sub-int v6, v6, p4

    if-gt v0, v6, :cond_4

    .line 283
    if-ltz v2, :cond_4

    array-length v6, v1

    sub-int v6, v6, p4

    if-le v2, v6, :cond_0

    goto :goto_2

    .line 288
    :cond_0
    const/4 v6, 0x0

    .local v6, "otherOffset$iv":I
    move/from16 v6, p3

    .line 289
    add-int v7, v0, p4

    .local v7, "endIndex$iv$iv":I
    move-object v8, v3

    .local v8, "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    const/4 v9, 0x0

    .line 290
    .local v9, "$i$f$forEachSegment":I
    invoke-static {v8, v0}, Lokio/internal/_SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v10

    .line 291
    .local v10, "s$iv$iv":I
    move/from16 v11, p1

    .line 292
    .local v11, "pos$iv$iv":I
    :goto_0
    if-ge v11, v7, :cond_3

    .line 293
    if-nez v10, :cond_1

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v12

    add-int/lit8 v13, v10, -0x1

    aget v12, v12, v13

    .line 294
    .local v12, "segmentOffset$iv$iv":I
    :goto_1
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v13

    aget v13, v13, v10

    sub-int/2addr v13, v12

    .line 295
    .local v13, "segmentSize$iv$iv":I
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v14

    invoke-virtual {v8}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v15

    check-cast v15, [Ljava/lang/Object;

    array-length v15, v15

    add-int/2addr v15, v10

    aget v14, v14, v15

    .line 297
    .local v14, "segmentPos$iv$iv":I
    add-int v15, v12, v13

    invoke-static {v7, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    sub-int/2addr v15, v11

    .line 298
    .local v15, "byteCount$iv$iv":I
    sub-int v16, v11, v12

    add-int v16, v14, v16

    .line 299
    .local v16, "offset$iv$iv":I
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v17

    aget-object v17, v17, v10

    .local v17, "data$iv":[B
    move/from16 v18, v15

    .local v18, "byteCount$iv":I
    move/from16 v19, v16

    .local v19, "offset$iv":I
    move-object/from16 v20, v17

    .end local v17    # "data$iv":[B
    .local v20, "data$iv":[B
    const/16 v17, 0x0

    .line 300
    .local v17, "$i$a$-forEachSegment-_SegmentedByteStringKt$commonRangeEquals$2$iv":I
    move/from16 v5, v18

    move/from16 v0, v19

    move-object/from16 v2, v20

    .end local v18    # "byteCount$iv":I
    .end local v19    # "offset$iv":I
    .end local v20    # "data$iv":[B
    .local v0, "offset$iv":I
    .local v2, "data$iv":[B
    .local v5, "byteCount$iv":I
    invoke-static {v2, v0, v1, v6, v5}, Lokio/_UtilKt;->arrayRangeEquals([BI[BII)Z

    move-result v18

    if-nez v18, :cond_2

    const/4 v5, 0x0

    goto :goto_3

    .line 301
    :cond_2
    add-int/2addr v6, v5

    .line 302
    nop

    .line 303
    .end local v0    # "offset$iv":I
    .end local v2    # "data$iv":[B
    .end local v5    # "byteCount$iv":I
    .end local v17    # "$i$a$-forEachSegment-_SegmentedByteStringKt$commonRangeEquals$2$iv":I
    add-int/2addr v11, v15

    .line 304
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, p1

    move/from16 v2, p3

    .end local v12    # "segmentOffset$iv$iv":I
    .end local v13    # "segmentSize$iv$iv":I
    .end local v14    # "segmentPos$iv$iv":I
    .end local v15    # "byteCount$iv$iv":I
    .end local v16    # "offset$iv$iv":I
    goto :goto_0

    .line 306
    :cond_3
    nop

    .line 307
    .end local v7    # "endIndex$iv$iv":I
    .end local v8    # "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    .end local v9    # "$i$f$forEachSegment":I
    .end local v10    # "s$iv$iv":I
    .end local v11    # "pos$iv$iv":I
    const/4 v5, 0x1

    goto :goto_3

    .line 285
    .end local v6    # "otherOffset$iv":I
    :cond_4
    :goto_2
    const/4 v5, 0x0

    .line 110
    .end local v3    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    .end local v4    # "$i$f$commonRangeEquals":I
    :goto_3
    return v5
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokio/ByteString;->string(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lokio/ByteString;
    .locals 17
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 78
    move/from16 v0, p1

    move-object/from16 v1, p0

    .local v1, "$this$commonSubstring$iv":Lokio/SegmentedByteString;
    const/4 v2, 0x0

    .line 165
    .local v2, "$i$f$commonSubstring":I
    move-object v3, v1

    check-cast v3, Lokio/ByteString;

    move/from16 v4, p2

    invoke-static {v3, v4}, Lokio/_UtilKt;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result v3

    .line 166
    .local v3, "endIndex$iv":I
    const/4 v6, 0x1

    if-ltz v0, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_a

    .line 168
    invoke-virtual {v1}, Lokio/SegmentedByteString;->size()I

    move-result v7

    if-gt v3, v7, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const-string v8, "endIndex="

    if-eqz v7, :cond_9

    .line 170
    sub-int v7, v3, v0

    .line 171
    .local v7, "subLen$iv":I
    if-ltz v7, :cond_2

    move v9, v6

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_8

    .line 173
    nop

    .line 174
    if-nez v0, :cond_3

    invoke-virtual {v1}, Lokio/SegmentedByteString;->size()I

    move-result v8

    if-ne v3, v8, :cond_3

    move-object v5, v1

    check-cast v5, Lokio/ByteString;

    goto/16 :goto_6

    .line 175
    :cond_3
    if-ne v0, v3, :cond_4

    sget-object v5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto/16 :goto_6

    .line 178
    :cond_4
    invoke-static {v1, v0}, Lokio/internal/_SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v8

    .line 179
    .local v8, "beginSegment$iv":I
    add-int/lit8 v9, v3, -0x1

    invoke-static {v1, v9}, Lokio/internal/_SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v9

    .line 181
    .local v9, "endSegment$iv":I
    invoke-virtual {v1}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    add-int/lit8 v11, v9, 0x1

    invoke-static {v10, v8, v11}, Lkotlin/collections/ArraysKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[B

    .line 182
    .local v10, "newSegments$iv":[[B
    move-object v11, v10

    check-cast v11, [Ljava/lang/Object;

    array-length v11, v11

    mul-int/lit8 v11, v11, 0x2

    new-array v11, v11, [I

    .line 183
    .local v11, "newDirectory$iv":[I
    const/4 v12, 0x0

    .line 184
    .local v12, "index$iv":I
    if-gt v8, v9, :cond_6

    move v13, v8

    :goto_3
    move v14, v13

    .local v14, "s$iv":I
    add-int/2addr v13, v6

    .line 185
    invoke-virtual {v1}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v15

    aget v15, v15, v14

    sub-int/2addr v15, v0

    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v15

    aput v15, v11, v12

    .line 186
    add-int/lit8 v15, v12, 0x1

    .end local v12    # "index$iv":I
    .local v15, "index$iv":I
    move-object v5, v10

    check-cast v5, [Ljava/lang/Object;

    array-length v5, v5

    add-int/2addr v12, v5

    invoke-virtual {v1}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v5

    invoke-virtual {v1}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, [Ljava/lang/Object;

    array-length v6, v6

    add-int/2addr v6, v14

    aget v5, v5, v6

    aput v5, v11, v12

    .line 184
    move v12, v15

    if-ne v14, v9, :cond_5

    goto :goto_4

    :cond_5
    const/4 v6, 0x1

    goto :goto_3

    .line 190
    .end local v14    # "s$iv":I
    .end local v15    # "index$iv":I
    .restart local v12    # "index$iv":I
    :cond_6
    :goto_4
    if-nez v8, :cond_7

    const/4 v5, 0x0

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v5

    add-int/lit8 v6, v8, -0x1

    aget v5, v5, v6

    .line 191
    .local v5, "segmentOffset$iv":I
    :goto_5
    move-object v6, v10

    check-cast v6, [Ljava/lang/Object;

    array-length v6, v6

    aget v13, v11, v6

    sub-int v14, v0, v5

    add-int/2addr v13, v14

    aput v13, v11, v6

    .line 193
    new-instance v6, Lokio/SegmentedByteString;

    invoke-direct {v6, v10, v11}, Lokio/SegmentedByteString;-><init>([[B[I)V

    check-cast v6, Lokio/ByteString;

    move-object v5, v6

    .line 78
    .end local v1    # "$this$commonSubstring$iv":Lokio/SegmentedByteString;
    .end local v2    # "$i$f$commonSubstring":I
    .end local v3    # "endIndex$iv":I
    .end local v5    # "segmentOffset$iv":I
    .end local v7    # "subLen$iv":I
    .end local v8    # "beginSegment$iv":I
    .end local v9    # "endSegment$iv":I
    .end local v10    # "newSegments$iv":[[B
    .end local v11    # "newDirectory$iv":[I
    .end local v12    # "index$iv":I
    :goto_6
    return-object v5

    .line 167
    .restart local v1    # "$this$commonSubstring$iv":Lokio/SegmentedByteString;
    .restart local v2    # "$i$f$commonSubstring":I
    .restart local v3    # "endIndex$iv":I
    .restart local v7    # "subLen$iv":I
    :cond_8
    const/4 v5, 0x0

    .line 171
    .local v5, "$i$a$-require-_SegmentedByteStringKt$commonSubstring$3$iv":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " < beginIndex="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require-_SegmentedByteStringKt$commonSubstring$3$iv":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 167
    .end local v7    # "subLen$iv":I
    :cond_9
    const/4 v5, 0x0

    .line 168
    .local v5, "$i$a$-require-_SegmentedByteStringKt$commonSubstring$2$iv":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > length("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lokio/SegmentedByteString;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require-_SegmentedByteStringKt$commonSubstring$2$iv":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 167
    :cond_a
    const/4 v5, 0x0

    .line 166
    .local v5, "$i$a$-require-_SegmentedByteStringKt$commonSubstring$1$iv":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "beginIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " < 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require-_SegmentedByteStringKt$commonSubstring$1$iv":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .locals 1

    .line 48
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiUppercase()Lokio/ByteString;
    .locals 1

    .line 50
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiUppercase()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 16

    .line 84
    move-object/from16 v0, p0

    .local v0, "$this$commonToByteArray$iv":Lokio/SegmentedByteString;
    const/4 v1, 0x0

    .line 200
    .local v1, "$i$f$commonToByteArray":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->size()I

    move-result v2

    new-array v2, v2, [B

    .line 201
    .local v2, "result$iv":[B
    const/4 v3, 0x0

    .line 202
    .local v3, "resultPos$iv":I
    move-object v4, v0

    .local v4, "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    const/4 v5, 0x0

    .line 203
    .local v5, "$i$f$forEachSegment":I
    invoke-virtual {v4}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    array-length v6, v6

    .line 204
    .local v6, "segmentCount$iv$iv":I
    const/4 v7, 0x0

    .line 205
    .local v7, "s$iv$iv":I
    const/4 v8, 0x0

    .line 206
    .local v8, "pos$iv$iv":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 207
    invoke-virtual {v4}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v9

    add-int v10, v6, v7

    aget v9, v9, v10

    .line 208
    .local v9, "segmentPos$iv$iv":I
    invoke-virtual {v4}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v10

    aget v10, v10, v7

    .line 210
    .local v10, "nextSegmentOffset$iv$iv":I
    invoke-virtual {v4}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v11

    aget-object v11, v11, v7

    .local v11, "data$iv":[B
    sub-int v12, v10, v8

    .local v12, "byteCount$iv":I
    move v13, v9

    .local v13, "offset$iv":I
    const/4 v14, 0x0

    .line 211
    .local v14, "$i$a$-forEachSegment-_SegmentedByteStringKt$commonToByteArray$1$iv":I
    nop

    .line 212
    nop

    .line 213
    add-int v15, v13, v12

    .line 211
    invoke-static {v11, v2, v3, v13, v15}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 215
    add-int/2addr v3, v12

    .line 216
    nop

    .line 217
    .end local v11    # "data$iv":[B
    .end local v12    # "byteCount$iv":I
    .end local v13    # "offset$iv":I
    .end local v14    # "$i$a$-forEachSegment-_SegmentedByteStringKt$commonToByteArray$1$iv":I
    move v8, v10

    .line 218
    add-int/lit8 v7, v7, 0x1

    .end local v9    # "segmentPos$iv$iv":I
    .end local v10    # "nextSegmentOffset$iv$iv":I
    goto :goto_0

    .line 220
    :cond_0
    nop

    .line 221
    .end local v4    # "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    .end local v5    # "$i$f$forEachSegment":I
    .end local v6    # "segmentCount$iv$iv":I
    .end local v7    # "s$iv$iv":I
    .end local v8    # "pos$iv$iv":I
    nop

    .line 84
    .end local v0    # "$this$commonToByteArray$iv":Lokio/SegmentedByteString;
    .end local v1    # "$i$f$commonToByteArray":I
    .end local v2    # "result$iv":[B
    .end local v3    # "resultPos$iv":I
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 135
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 11
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    move-object v0, p0

    .local v0, "$this$forEachSegment$iv":Lokio/SegmentedByteString;
    const/4 v1, 0x0

    .line 222
    .local v1, "$i$f$forEachSegment":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    array-length v2, v2

    .line 223
    .local v2, "segmentCount$iv":I
    const/4 v3, 0x0

    .line 224
    .local v3, "s$iv":I
    const/4 v4, 0x0

    .line 225
    .local v4, "pos$iv":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 226
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v5

    add-int v6, v2, v3

    aget v5, v5, v6

    .line 227
    .local v5, "segmentPos$iv":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v6

    aget v6, v6, v3

    .line 229
    .local v6, "nextSegmentOffset$iv":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v7

    aget-object v7, v7, v3

    .local v7, "data":[B
    sub-int v8, v6, v4

    .local v8, "byteCount":I
    move v9, v5

    .local v9, "offset":I
    const/4 v10, 0x0

    .line 91
    .local v10, "$i$a$-forEachSegment-SegmentedByteString$write$1":I
    invoke-virtual {p1, v7, v9, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 92
    nop

    .line 230
    .end local v7    # "data":[B
    .end local v8    # "byteCount":I
    .end local v9    # "offset":I
    .end local v10    # "$i$a$-forEachSegment-SegmentedByteString$write$1":I
    move v4, v6

    .line 231
    add-int/lit8 v3, v3, 0x1

    .end local v5    # "segmentPos$iv":I
    .end local v6    # "nextSegmentOffset$iv":I
    goto :goto_0

    .line 233
    :cond_0
    nop

    .line 93
    .end local v0    # "$this$forEachSegment$iv":Lokio/SegmentedByteString;
    .end local v1    # "$i$f$forEachSegment":I
    .end local v2    # "segmentCount$iv":I
    .end local v3    # "s$iv":I
    .end local v4    # "pos$iv":I
    return-void
.end method

.method public write$okio(Lokio/Buffer;II)V
    .locals 25
    .param p1, "buffer"    # Lokio/Buffer;
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "buffer"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    move-object/from16 v3, p0

    .local v3, "$this$commonWrite$iv":Lokio/SegmentedByteString;
    const/4 v4, 0x0

    .line 234
    .local v4, "$i$f$commonWrite":I
    add-int v5, v1, v2

    .local v5, "endIndex$iv$iv":I
    move-object v6, v3

    .local v6, "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    const/4 v7, 0x0

    .line 235
    .local v7, "$i$f$forEachSegment":I
    invoke-static {v6, v1}, Lokio/internal/_SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v8

    .line 236
    .local v8, "s$iv$iv":I
    move/from16 v9, p2

    .line 237
    .local v9, "pos$iv$iv":I
    :goto_0
    if-ge v9, v5, :cond_2

    .line 238
    if-nez v8, :cond_0

    const/4 v10, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v10

    add-int/lit8 v11, v8, -0x1

    aget v10, v10, v11

    .line 239
    .local v10, "segmentOffset$iv$iv":I
    :goto_1
    invoke-virtual {v6}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v11

    aget v11, v11, v8

    sub-int/2addr v11, v10

    .line 240
    .local v11, "segmentSize$iv$iv":I
    invoke-virtual {v6}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v12

    invoke-virtual {v6}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    array-length v13, v13

    add-int/2addr v13, v8

    aget v12, v12, v13

    .line 242
    .local v12, "segmentPos$iv$iv":I
    add-int v13, v10, v11

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    sub-int/2addr v13, v9

    .line 243
    .local v13, "byteCount$iv$iv":I
    sub-int v14, v9, v10

    add-int/2addr v14, v12

    .line 244
    .local v14, "offset$iv$iv":I
    invoke-virtual {v6}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v15

    aget-object v17, v15, v8

    .local v17, "data$iv":[B
    move v15, v13

    .local v15, "byteCount$iv":I
    move/from16 v22, v14

    .local v22, "offset$iv":I
    const/16 v23, 0x0

    .line 245
    .local v23, "$i$a$-forEachSegment-_SegmentedByteStringKt$commonWrite$1$iv":I
    new-instance v24, Lokio/Segment;

    add-int v19, v22, v15

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v24

    move/from16 v18, v22

    invoke-direct/range {v16 .. v21}, Lokio/Segment;-><init>([BIIZZ)V

    .line 246
    .local v16, "segment$iv":Lokio/Segment;
    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_1

    .line 247
    move-object/from16 v1, v16

    .end local v16    # "segment$iv":Lokio/Segment;
    .local v1, "segment$iv":Lokio/Segment;
    iput-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 248
    move-object/from16 v16, v3

    .end local v3    # "$this$commonWrite$iv":Lokio/SegmentedByteString;
    .local v16, "$this$commonWrite$iv":Lokio/SegmentedByteString;
    iget-object v3, v1, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v3, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 249
    iget-object v3, v1, Lokio/Segment;->next:Lokio/Segment;

    iput-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_2

    .line 251
    .end local v1    # "segment$iv":Lokio/Segment;
    .restart local v3    # "$this$commonWrite$iv":Lokio/SegmentedByteString;
    .local v16, "segment$iv":Lokio/Segment;
    :cond_1
    move-object/from16 v1, v16

    move-object/from16 v16, v3

    .end local v3    # "$this$commonWrite$iv":Lokio/SegmentedByteString;
    .restart local v1    # "segment$iv":Lokio/Segment;
    .local v16, "$this$commonWrite$iv":Lokio/SegmentedByteString;
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 253
    :goto_2
    nop

    .line 254
    .end local v1    # "segment$iv":Lokio/Segment;
    .end local v15    # "byteCount$iv":I
    .end local v17    # "data$iv":[B
    .end local v22    # "offset$iv":I
    .end local v23    # "$i$a$-forEachSegment-_SegmentedByteStringKt$commonWrite$1$iv":I
    add-int/2addr v9, v13

    .line 255
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p2

    move-object/from16 v3, v16

    .end local v10    # "segmentOffset$iv$iv":I
    .end local v11    # "segmentSize$iv$iv":I
    .end local v12    # "segmentPos$iv$iv":I
    .end local v13    # "byteCount$iv$iv":I
    .end local v14    # "offset$iv$iv":I
    goto :goto_0

    .line 257
    .end local v16    # "$this$commonWrite$iv":Lokio/SegmentedByteString;
    .restart local v3    # "$this$commonWrite$iv":Lokio/SegmentedByteString;
    :cond_2
    nop

    .line 258
    .end local v5    # "endIndex$iv$iv":I
    .end local v6    # "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    .end local v7    # "$i$f$forEachSegment":I
    .end local v8    # "s$iv$iv":I
    .end local v9    # "pos$iv$iv":I
    invoke-virtual/range {p1 .. p1}, Lokio/Buffer;->size()J

    move-result-wide v5

    int-to-long v7, v2

    add-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->setSize$okio(J)V

    .line 259
    nop

    .line 96
    .end local v3    # "$this$commonWrite$iv":Lokio/SegmentedByteString;
    .end local v4    # "$i$f$commonWrite":I
    return-void
.end method
