.class public final Lokio/Options$Companion;
.super Ljava/lang/Object;
.source "Options.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Options.kt\nokio/Options$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 -Util.kt\nokio/_UtilKt\n*L\n1#1,236:1\n11328#2:237\n11663#2,3:238\n13601#2,3:243\n37#3,2:241\n1#4:246\n72#5:247\n72#5:248\n*S KotlinDebug\n*F\n+ 1 Options.kt\nokio/Options$Companion\n*L\n43#1:237\n43#1:238,3\n44#1:243,3\n43#1:241,2\n151#1:247\n208#1:248\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JT\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000fH\u0002J!\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u000e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00100\u0016\"\u00020\u0010H\u0007\u00a2\u0006\u0002\u0010\u0017R\u0018\u0010\u0003\u001a\u00020\u0004*\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lokio/Options$Companion;",
        "",
        "()V",
        "intCount",
        "",
        "Lokio/Buffer;",
        "getIntCount",
        "(Lokio/Buffer;)J",
        "buildTrieRecursive",
        "",
        "nodeOffset",
        "node",
        "byteStringOffset",
        "",
        "byteStrings",
        "",
        "Lokio/ByteString;",
        "fromIndex",
        "toIndex",
        "indexes",
        "of",
        "Lokio/Options;",
        "",
        "([Lokio/ByteString;)Lokio/Options;",
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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lokio/Options$Companion;-><init>()V

    return-void
.end method

.method private final buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
    .locals 26
    .param p1, "nodeOffset"    # J
    .param p3, "node"    # Lokio/Buffer;
    .param p4, "byteStringOffset"    # I
    .param p5, "byteStrings"    # Ljava/util/List;
    .param p6, "fromIndex"    # I
    .param p7, "toIndex"    # I
    .param p8, "indexes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lokio/Buffer;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lokio/ByteString;",
            ">;II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 116
    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v15, p8

    const/4 v0, 0x0

    const/16 v16, 0x1

    if-ge v13, v14, :cond_0

    move/from16 v1, v16

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Failed requirement."

    if-eqz v1, :cond_1b

    .line 117
    if-ge v13, v14, :cond_4

    move v1, v13

    :cond_1
    move v3, v1

    .local v3, "i":I
    add-int/lit8 v1, v1, 0x1

    .line 118
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    if-lt v4, v11, :cond_2

    move/from16 v4, v16

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    if-eqz v4, :cond_3

    .line 117
    if-lt v1, v14, :cond_1

    goto :goto_2

    .line 118
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 121
    .end local v3    # "i":I
    :cond_4
    :goto_2
    move/from16 v1, p6

    .line 122
    .local v1, "fromIndex":I
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    .line 123
    .local v2, "from":Lokio/ByteString;
    add-int/lit8 v3, v14, -0x1

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lokio/ByteString;

    .line 124
    .local v8, "to":Lokio/ByteString;
    const/4 v3, -0x1

    .line 127
    .local v3, "prefixIndex":I
    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v4

    if-ne v11, v4, :cond_5

    .line 128
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 129
    add-int/lit8 v1, v1, 0x1

    .line 130
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lokio/ByteString;

    move v7, v1

    move-object v6, v2

    move v5, v3

    goto :goto_3

    .line 127
    :cond_5
    move v7, v1

    move-object v6, v2

    move v5, v3

    .line 133
    .end local v1    # "fromIndex":I
    .end local v2    # "from":Lokio/ByteString;
    .end local v3    # "prefixIndex":I
    .local v5, "prefixIndex":I
    .local v6, "from":Lokio/ByteString;
    .local v7, "fromIndex":I
    :goto_3
    invoke-virtual {v6, v11}, Lokio/ByteString;->getByte(I)B

    move-result v1

    invoke-virtual {v8, v11}, Lokio/ByteString;->getByte(I)B

    move-result v2

    if-eq v1, v2, :cond_12

    .line 135
    const/4 v0, 0x1

    .line 136
    .local v0, "selectChoiceCount":I
    add-int/lit8 v1, v7, 0x1

    if-ge v1, v14, :cond_8

    :cond_6
    move v2, v1

    .local v2, "i":I
    add-int/lit8 v1, v1, 0x1

    .line 137
    add-int/lit8 v4, v2, -0x1

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4, v11}, Lokio/ByteString;->getByte(I)B

    move-result v4

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3, v11}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-eq v4, v3, :cond_7

    .line 138
    add-int/lit8 v0, v0, 0x1

    .line 136
    :cond_7
    if-lt v1, v14, :cond_6

    move v4, v0

    goto :goto_4

    .end local v2    # "i":I
    :cond_8
    move v4, v0

    .line 143
    .end local v0    # "selectChoiceCount":I
    .local v4, "selectChoiceCount":I
    :goto_4
    invoke-direct {v9, v10}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v0

    add-long v0, p1, v0

    const/4 v2, 0x2

    int-to-long v2, v2

    add-long/2addr v0, v2

    mul-int/lit8 v2, v4, 0x2

    int-to-long v2, v2

    add-long v17, v0, v2

    .line 145
    .local v17, "childNodesOffset":J
    invoke-virtual {v10, v4}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 146
    invoke-virtual {v10, v5}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 148
    if-ge v7, v14, :cond_c

    move v0, v7

    :cond_9
    move v1, v0

    .local v1, "i":I
    add-int/lit8 v0, v0, 0x1

    .line 149
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2, v11}, Lokio/ByteString;->getByte(I)B

    move-result v2

    .line 150
    .local v2, "rangeByte":B
    if-eq v1, v7, :cond_a

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3, v11}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-eq v2, v3, :cond_b

    .line 151
    :cond_a
    const/16 v3, 0xff

    .local v3, "other$iv":I
    move/from16 v19, v2

    .local v19, "$this$and$iv":B
    const/16 v20, 0x0

    .line 247
    .local v20, "$i$f$and":I
    and-int v3, v19, v3

    .line 151
    .end local v3    # "other$iv":I
    .end local v19    # "$this$and$iv":B
    .end local v20    # "$i$f$and":I
    invoke-virtual {v10, v3}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 148
    .end local v2    # "rangeByte":B
    :cond_b
    if-lt v0, v14, :cond_9

    .line 155
    .end local v1    # "i":I
    :cond_c
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    move-object v3, v0

    .line 156
    .local v3, "childNodes":Lokio/Buffer;
    move v0, v7

    move v1, v0

    .line 157
    .local v1, "rangeStart":I
    :goto_5
    if-ge v1, v14, :cond_11

    .line 158
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0, v11}, Lokio/ByteString;->getByte(I)B

    move-result v2

    .line 159
    .restart local v2    # "rangeByte":B
    move/from16 v0, p7

    .line 160
    .local v0, "rangeEnd":I
    move/from16 v19, v0

    .end local v0    # "rangeEnd":I
    .local v19, "rangeEnd":I
    add-int/lit8 v0, v1, 0x1

    if-ge v0, v14, :cond_f

    :goto_6
    move/from16 v20, v0

    .local v20, "i":I
    add-int/lit8 v0, v0, 0x1

    .line 161
    move/from16 v21, v4

    move/from16 v4, v20

    .end local v20    # "i":I
    .local v4, "i":I
    .local v21, "selectChoiceCount":I
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v22, v5

    .end local v5    # "prefixIndex":I
    .local v22, "prefixIndex":I
    move-object/from16 v5, v20

    check-cast v5, Lokio/ByteString;

    invoke-virtual {v5, v11}, Lokio/ByteString;->getByte(I)B

    move-result v5

    if-eq v2, v5, :cond_d

    .line 162
    move v0, v4

    .line 163
    .end local v19    # "rangeEnd":I
    .restart local v0    # "rangeEnd":I
    move v5, v0

    goto :goto_8

    .line 160
    .end local v0    # "rangeEnd":I
    .restart local v19    # "rangeEnd":I
    :cond_d
    if-lt v0, v14, :cond_e

    goto :goto_7

    :cond_e
    move/from16 v4, v21

    move/from16 v5, v22

    goto :goto_6

    .end local v21    # "selectChoiceCount":I
    .end local v22    # "prefixIndex":I
    .local v4, "selectChoiceCount":I
    .restart local v5    # "prefixIndex":I
    :cond_f
    move/from16 v21, v4

    move/from16 v22, v5

    .line 167
    .end local v4    # "selectChoiceCount":I
    .end local v5    # "prefixIndex":I
    .restart local v21    # "selectChoiceCount":I
    .restart local v22    # "prefixIndex":I
    :goto_7
    move/from16 v5, v19

    .end local v19    # "rangeEnd":I
    .local v5, "rangeEnd":I
    :goto_8
    add-int/lit8 v0, v1, 0x1

    if-ne v0, v5, :cond_10

    .line 168
    add-int/lit8 v0, v11, 0x1

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    if-ne v0, v4, :cond_10

    .line 171
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move/from16 v20, v1

    move/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v19, v5

    move v15, v7

    move-object/from16 v25, v8

    move/from16 v13, v22

    move-object/from16 v22, v6

    goto :goto_9

    .line 174
    :cond_10
    invoke-direct {v9, v3}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v19

    move v4, v1

    .end local v1    # "rangeStart":I
    .local v4, "rangeStart":I
    add-long v0, v17, v19

    long-to-int v0, v0

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 175
    nop

    .line 176
    nop

    .line 177
    nop

    .line 178
    add-int/lit8 v19, v11, 0x1

    .line 179
    nop

    .line 180
    nop

    .line 181
    nop

    .line 182
    nop

    .line 175
    move-object/from16 v0, p0

    move/from16 v23, v2

    move/from16 v20, v4

    .end local v2    # "rangeByte":B
    .end local v4    # "rangeStart":I
    .local v20, "rangeStart":I
    .local v23, "rangeByte":B
    move-wide/from16 v1, v17

    move-object/from16 v24, v3

    .end local v3    # "childNodes":Lokio/Buffer;
    .local v24, "childNodes":Lokio/Buffer;
    move/from16 v4, v19

    move/from16 v19, v5

    move/from16 v13, v22

    .end local v5    # "rangeEnd":I
    .end local v22    # "prefixIndex":I
    .local v13, "prefixIndex":I
    .restart local v19    # "rangeEnd":I
    move-object/from16 v5, p5

    move-object/from16 v22, v6

    .end local v6    # "from":Lokio/ByteString;
    .local v22, "from":Lokio/ByteString;
    move/from16 v6, v20

    move v15, v7

    .end local v7    # "fromIndex":I
    .local v15, "fromIndex":I
    move/from16 v7, v19

    move-object/from16 v25, v8

    .end local v8    # "to":Lokio/ByteString;
    .local v25, "to":Lokio/ByteString;
    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 186
    :goto_9
    move/from16 v1, v19

    move v5, v13

    move v7, v15

    move/from16 v4, v21

    move-object/from16 v6, v22

    move-object/from16 v3, v24

    move-object/from16 v8, v25

    move/from16 v13, p6

    move-object/from16 v15, p8

    .end local v19    # "rangeEnd":I
    .end local v20    # "rangeStart":I
    .end local v23    # "rangeByte":B
    .restart local v1    # "rangeStart":I
    goto/16 :goto_5

    .line 189
    .end local v13    # "prefixIndex":I
    .end local v15    # "fromIndex":I
    .end local v21    # "selectChoiceCount":I
    .end local v22    # "from":Lokio/ByteString;
    .end local v24    # "childNodes":Lokio/Buffer;
    .end local v25    # "to":Lokio/ByteString;
    .restart local v3    # "childNodes":Lokio/Buffer;
    .local v4, "selectChoiceCount":I
    .local v5, "prefixIndex":I
    .restart local v6    # "from":Lokio/ByteString;
    .restart local v7    # "fromIndex":I
    .restart local v8    # "to":Lokio/ByteString;
    :cond_11
    move/from16 v20, v1

    move-object/from16 v24, v3

    move/from16 v21, v4

    move v13, v5

    move-object/from16 v22, v6

    move v15, v7

    move-object/from16 v25, v8

    .end local v1    # "rangeStart":I
    .end local v3    # "childNodes":Lokio/Buffer;
    .end local v4    # "selectChoiceCount":I
    .end local v5    # "prefixIndex":I
    .end local v6    # "from":Lokio/ByteString;
    .end local v7    # "fromIndex":I
    .end local v8    # "to":Lokio/ByteString;
    .restart local v13    # "prefixIndex":I
    .restart local v15    # "fromIndex":I
    .restart local v20    # "rangeStart":I
    .restart local v21    # "selectChoiceCount":I
    .restart local v22    # "from":Lokio/ByteString;
    .restart local v24    # "childNodes":Lokio/Buffer;
    .restart local v25    # "to":Lokio/ByteString;
    move-object/from16 v0, v24

    check-cast v0, Lokio/Source;

    invoke-virtual {v10, v0}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    move/from16 v16, v15

    move-object/from16 v21, v25

    move-object/from16 v15, p8

    goto/16 :goto_c

    .line 192
    .end local v13    # "prefixIndex":I
    .end local v15    # "fromIndex":I
    .end local v17    # "childNodesOffset":J
    .end local v20    # "rangeStart":I
    .end local v21    # "selectChoiceCount":I
    .end local v22    # "from":Lokio/ByteString;
    .end local v24    # "childNodes":Lokio/Buffer;
    .end local v25    # "to":Lokio/ByteString;
    .restart local v5    # "prefixIndex":I
    .restart local v6    # "from":Lokio/ByteString;
    .restart local v7    # "fromIndex":I
    .restart local v8    # "to":Lokio/ByteString;
    :cond_12
    move v13, v5

    move-object/from16 v22, v6

    move v15, v7

    move-object/from16 v25, v8

    .end local v5    # "prefixIndex":I
    .end local v6    # "from":Lokio/ByteString;
    .end local v7    # "fromIndex":I
    .end local v8    # "to":Lokio/ByteString;
    .restart local v13    # "prefixIndex":I
    .restart local v15    # "fromIndex":I
    .restart local v22    # "from":Lokio/ByteString;
    .restart local v25    # "to":Lokio/ByteString;
    const/4 v1, 0x0

    .line 193
    .local v1, "scanByteCount":I
    invoke-virtual/range {v22 .. v22}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual/range {v25 .. v25}, Lokio/ByteString;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v11, v2, :cond_15

    move v3, v11

    :goto_a
    move v4, v3

    .local v4, "i":I
    add-int/lit8 v3, v3, 0x1

    .line 194
    move-object/from16 v8, v22

    .end local v22    # "from":Lokio/ByteString;
    .local v8, "from":Lokio/ByteString;
    invoke-virtual {v8, v4}, Lokio/ByteString;->getByte(I)B

    move-result v5

    move-object/from16 v7, v25

    .end local v25    # "to":Lokio/ByteString;
    .local v7, "to":Lokio/ByteString;
    invoke-virtual {v7, v4}, Lokio/ByteString;->getByte(I)B

    move-result v6

    if-ne v5, v6, :cond_14

    .line 195
    add-int/lit8 v1, v1, 0x1

    .line 193
    if-lt v3, v2, :cond_13

    move v6, v1

    goto :goto_b

    :cond_13
    move-object/from16 v25, v7

    move-object/from16 v22, v8

    goto :goto_a

    .line 197
    :cond_14
    move v6, v1

    goto :goto_b

    .line 193
    .end local v4    # "i":I
    .end local v7    # "to":Lokio/ByteString;
    .end local v8    # "from":Lokio/ByteString;
    .restart local v22    # "from":Lokio/ByteString;
    .restart local v25    # "to":Lokio/ByteString;
    :cond_15
    move-object/from16 v8, v22

    move-object/from16 v7, v25

    .end local v22    # "from":Lokio/ByteString;
    .end local v25    # "to":Lokio/ByteString;
    .restart local v7    # "to":Lokio/ByteString;
    .restart local v8    # "from":Lokio/ByteString;
    move v6, v1

    .line 202
    .end local v1    # "scanByteCount":I
    .local v6, "scanByteCount":I
    :goto_b
    invoke-direct {v9, v10}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v1

    add-long v1, p1, v1

    const/4 v3, 0x2

    int-to-long v3, v3

    add-long/2addr v1, v3

    int-to-long v3, v6

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long v17, v1, v3

    .line 204
    .restart local v17    # "childNodesOffset":J
    neg-int v1, v6

    invoke-virtual {v10, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 205
    invoke-virtual {v10, v13}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 207
    add-int v1, v11, v6

    if-ge v11, v1, :cond_17

    move v2, v11

    :cond_16
    move v3, v2

    .local v3, "i":I
    add-int/lit8 v2, v2, 0x1

    .line 208
    invoke-virtual {v8, v3}, Lokio/ByteString;->getByte(I)B

    move-result v4

    .local v4, "$this$and$iv":B
    const/16 v5, 0xff

    .local v5, "other$iv":I
    const/16 v19, 0x0

    .line 248
    .local v19, "$i$f$and":I
    and-int/2addr v4, v5

    .line 208
    .end local v4    # "$this$and$iv":B
    .end local v5    # "other$iv":I
    .end local v19    # "$i$f$and":I
    invoke-virtual {v10, v4}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 207
    if-lt v2, v1, :cond_16

    .line 211
    .end local v3    # "i":I
    :cond_17
    add-int/lit8 v1, v15, 0x1

    if-ne v1, v14, :cond_1a

    .line 213
    add-int v1, v11, v6

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    if-ne v1, v2, :cond_18

    move/from16 v0, v16

    :cond_18
    if-eqz v0, :cond_19

    .line 214
    move v5, v15

    move-object/from16 v15, p8

    .end local v15    # "fromIndex":I
    .local v5, "fromIndex":I
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move/from16 v16, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    goto :goto_c

    .line 213
    .end local v5    # "fromIndex":I
    .restart local v15    # "fromIndex":I
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 217
    :cond_1a
    move v5, v15

    move-object/from16 v15, p8

    .end local v15    # "fromIndex":I
    .restart local v5    # "fromIndex":I
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    move-object v4, v0

    .line 218
    .local v4, "childNodes":Lokio/Buffer;
    invoke-direct {v9, v4}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v0

    add-long v0, v17, v0

    long-to-int v0, v0

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 219
    nop

    .line 220
    nop

    .line 221
    nop

    .line 222
    add-int v16, v11, v6

    .line 223
    nop

    .line 224
    nop

    .line 225
    nop

    .line 226
    nop

    .line 219
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-object v3, v4

    move-object/from16 v19, v4

    .end local v4    # "childNodes":Lokio/Buffer;
    .local v19, "childNodes":Lokio/Buffer;
    move/from16 v4, v16

    move/from16 v16, v5

    .end local v5    # "fromIndex":I
    .local v16, "fromIndex":I
    move-object/from16 v5, p5

    move/from16 v20, v6

    .end local v6    # "scanByteCount":I
    .local v20, "scanByteCount":I
    move/from16 v6, v16

    move-object/from16 v21, v7

    .end local v7    # "to":Lokio/ByteString;
    .local v21, "to":Lokio/ByteString;
    move/from16 v7, p7

    move-object/from16 v22, v8

    .end local v8    # "from":Lokio/ByteString;
    .restart local v22    # "from":Lokio/ByteString;
    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 228
    move-object/from16 v0, v19

    check-cast v0, Lokio/Source;

    invoke-virtual {v10, v0}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 231
    .end local v17    # "childNodesOffset":J
    .end local v19    # "childNodes":Lokio/Buffer;
    .end local v20    # "scanByteCount":I
    :goto_c
    return-void

    .line 116
    .end local v13    # "prefixIndex":I
    .end local v16    # "fromIndex":I
    .end local v21    # "to":Lokio/ByteString;
    .end local v22    # "from":Lokio/ByteString;
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method static synthetic buildTrieRecursive$default(Lokio/Options$Companion;JLokio/Buffer;ILjava/util/List;IILjava/util/List;ILjava/lang/Object;)V
    .locals 11

    .line 107
    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    .line 108
    const-wide/16 v0, 0x0

    move-wide v3, v0

    goto :goto_0

    .line 107
    :cond_0
    move-wide v3, p1

    :goto_0
    and-int/lit8 v0, p9, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 110
    move v6, v1

    goto :goto_1

    .line 107
    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_2

    .line 112
    move v8, v1

    goto :goto_2

    .line 107
    :cond_2
    move/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_3

    .line 113
    nop

    .line 107
    nop

    .line 113
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    move v9, v0

    goto :goto_3

    .line 107
    :cond_3
    move/from16 v9, p7

    :goto_3
    move-object v2, p0

    move-object v5, p3

    move-object/from16 v7, p5

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    return-void
.end method

.method private final getIntCount(Lokio/Buffer;)J
    .locals 4
    .param p1, "$this$intCount"    # Lokio/Buffer;

    .line 233
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    const/4 v2, 0x4

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final varargs of([Lokio/ByteString;)Lokio/Options;
    .locals 21
    .param p1, "byteStrings"    # [Lokio/ByteString;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "byteStrings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 36
    new-instance v1, Lokio/Options;

    new-array v2, v2, [Lokio/ByteString;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v3, v4}, Lokio/Options;-><init>([Lokio/ByteString;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 41
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 42
    .local v1, "list":Ljava/util/List;
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    .line 43
    move-object/from16 v5, p1

    .local v5, "$this$map$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 237
    .local v6, "$i$f$map":I
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v5

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v5

    .local v8, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v9, 0x0

    .line 238
    .local v9, "$i$f$mapTo":I
    array-length v10, v8

    move v11, v2

    :goto_1
    if-ge v11, v10, :cond_2

    aget-object v12, v8, v11

    .line 239
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it":Lokio/ByteString;
    const/4 v14, 0x0

    .line 43
    .local v14, "$i$a$-map-Options$Companion$of$indexes$1":I
    const/4 v13, -0x1

    .end local v13    # "it":Lokio/ByteString;
    .end local v14    # "$i$a$-map-Options$Companion$of$indexes$1":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 238
    nop

    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 240
    :cond_2
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v9    # "$i$f$mapTo":I
    check-cast v7, Ljava/util/List;

    .line 237
    nop

    .end local v5    # "$this$map$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$map":I
    check-cast v7, Ljava/util/Collection;

    .line 43
    move-object v5, v7

    .local v5, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 241
    .local v6, "$i$f$toTypedArray":I
    nop

    .line 242
    .local v7, "thisCollection$iv":Ljava/util/Collection;
    new-array v8, v2, [Ljava/lang/Integer;

    invoke-interface {v7, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 43
    .end local v5    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v6    # "$i$f$toTypedArray":I
    .end local v7    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v8, [Ljava/lang/Integer;

    array-length v5, v8

    invoke-static {v8, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 44
    .local v15, "indexes":Ljava/util/List;
    move-object/from16 v11, p1

    .local v11, "$this$forEachIndexed$iv":[Ljava/lang/Object;
    const/4 v12, 0x0

    .line 243
    .local v12, "$i$f$forEachIndexed":I
    const/4 v5, 0x0

    .line 244
    .local v5, "index$iv":I
    array-length v13, v11

    move v14, v2

    :goto_2
    if-ge v14, v13, :cond_3

    aget-object v16, v11, v14

    .local v16, "item$iv":Ljava/lang/Object;
    add-int/lit8 v17, v5, 0x1

    .end local v5    # "index$iv":I
    .local v17, "index$iv":I
    move/from16 v18, v5

    .local v18, "callerIndex":I
    move-object/from16 v19, v16

    .local v19, "byteString":Lokio/ByteString;
    const/16 v20, 0x0

    .line 45
    .local v20, "$i$a$-forEachIndexed-Options$Companion$of$1":I
    move-object/from16 v6, v19

    check-cast v6, Ljava/lang/Comparable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, v1

    invoke-static/range {v5 .. v10}, Lkotlin/collections/CollectionsKt;->binarySearch$default(Ljava/util/List;Ljava/lang/Comparable;IIILjava/lang/Object;)I

    move-result v5

    .line 46
    .local v5, "sortedIndex":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v15, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 47
    nop

    .end local v5    # "sortedIndex":I
    .end local v16    # "item$iv":Ljava/lang/Object;
    .end local v18    # "callerIndex":I
    .end local v19    # "byteString":Lokio/ByteString;
    .end local v20    # "$i$a$-forEachIndexed-Options$Companion$of$1":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v17

    goto :goto_2

    .line 245
    .end local v17    # "index$iv":I
    .local v5, "index$iv":I
    :cond_3
    nop

    .line 48
    .end local v5    # "index$iv":I
    .end local v11    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .end local v12    # "$i$f$forEachIndexed":I
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    if-lez v5, :cond_4

    move v5, v3

    goto :goto_3

    :cond_4
    move v5, v2

    :goto_3
    if-eqz v5, :cond_c

    .line 53
    const/4 v5, 0x0

    move v14, v5

    .line 54
    .local v14, "a":I
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v14, v5, :cond_a

    .line 55
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    .line 56
    .local v5, "prefix":Lokio/ByteString;
    add-int/lit8 v6, v14, 0x1

    .line 57
    .local v6, "b":I
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 58
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokio/ByteString;

    .line 59
    .local v7, "byteString":Lokio/ByteString;
    invoke-virtual {v7, v5}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_7

    .line 60
    :cond_5
    invoke-virtual {v7}, Lokio/ByteString;->size()I

    move-result v8

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v9

    if-eq v8, v9, :cond_6

    move v8, v3

    goto :goto_6

    :cond_6
    move v8, v2

    :goto_6
    if-eqz v8, :cond_8

    .line 61
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-le v8, v9, :cond_7

    .line 62
    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 63
    invoke-interface {v15, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 65
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .end local v7    # "byteString":Lokio/ByteString;
    goto :goto_5

    .line 246
    .restart local v7    # "byteString":Lokio/ByteString;
    :cond_8
    const/4 v2, 0x0

    .line 60
    .local v2, "$i$a$-require-Options$Companion$of$3":I
    const-string v3, "duplicate option: "

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require-Options$Companion$of$3":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 68
    .end local v7    # "byteString":Lokio/ByteString;
    :cond_9
    :goto_7
    add-int/lit8 v14, v14, 0x1

    .end local v5    # "prefix":Lokio/ByteString;
    .end local v6    # "b":I
    goto :goto_4

    .line 71
    :cond_a
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 72
    .local v2, "trieBytes":Lokio/Buffer;
    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v3, 0x35

    const/16 v16, 0x0

    move-object/from16 v5, p0

    move-object v8, v2

    move-object v10, v1

    move-object v13, v15

    move/from16 v17, v14

    .end local v14    # "a":I
    .local v17, "a":I
    move v14, v3

    move-object v3, v15

    .end local v15    # "indexes":Ljava/util/List;
    .local v3, "indexes":Ljava/util/List;
    move-object/from16 v15, v16

    invoke-static/range {v5 .. v15}, Lokio/Options$Companion;->buildTrieRecursive$default(Lokio/Options$Companion;JLokio/Buffer;ILjava/util/List;IILjava/util/List;ILjava/lang/Object;)V

    .line 74
    move-object/from16 v8, p0

    invoke-direct {v8, v2}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v5

    long-to-int v5, v5

    new-array v5, v5, [I

    .line 75
    .local v5, "trie":[I
    const/4 v6, 0x0

    .line 76
    .local v6, "i":I
    :goto_8
    invoke-virtual {v2}, Lokio/Buffer;->exhausted()Z

    move-result v7

    if-nez v7, :cond_b

    .line 77
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    invoke-virtual {v2}, Lokio/Buffer;->readInt()I

    move-result v9

    aput v9, v5, v6

    move v6, v7

    goto :goto_8

    .line 80
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :cond_b
    new-instance v7, Lokio/Options;

    array-length v9, v0

    invoke-static {v0, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    const-string v10, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, [Lokio/ByteString;

    invoke-direct {v7, v9, v5, v4}, Lokio/Options;-><init>([Lokio/ByteString;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    .line 246
    .end local v2    # "trieBytes":Lokio/Buffer;
    .end local v3    # "indexes":Ljava/util/List;
    .end local v5    # "trie":[I
    .end local v6    # "i":I
    .end local v17    # "a":I
    .restart local v15    # "indexes":Ljava/util/List;
    :cond_c
    const/4 v2, 0x0

    .line 48
    .local v2, "$i$a$-require-Options$Companion$of$2":I
    nop

    .end local v2    # "$i$a$-require-Options$Companion$of$2":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "the empty byte string is not a supported option"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 242
    .end local v15    # "indexes":Ljava/util/List;
    .local v5, "$this$toTypedArray$iv":Ljava/util/Collection;
    .local v6, "$i$f$toTypedArray":I
    .local v7, "thisCollection$iv":Ljava/util/Collection;
    :cond_d
    move-object/from16 v8, p0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method
