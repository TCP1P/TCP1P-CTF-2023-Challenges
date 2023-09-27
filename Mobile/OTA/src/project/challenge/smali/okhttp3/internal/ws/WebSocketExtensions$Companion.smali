.class public final Lokhttp3/internal/ws/WebSocketExtensions$Companion;
.super Ljava/lang/Object;
.source "WebSocketExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/WebSocketExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lokhttp3/internal/ws/WebSocketExtensions$Companion;",
        "",
        "()V",
        "HEADER_WEB_SOCKET_EXTENSION",
        "",
        "parse",
        "Lokhttp3/internal/ws/WebSocketExtensions;",
        "responseHeaders",
        "Lokhttp3/Headers;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketExtensions$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/internal/ws/WebSocketExtensions;
    .locals 23
    .param p1, "responseHeaders"    # Lokhttp3/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "responseHeaders"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, "compressionEnabled":Z
    const/4 v2, 0x0

    .line 100
    .local v2, "clientMaxWindowBits":Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 101
    .local v3, "clientNoContextTakeover":Z
    const/4 v4, 0x0

    .line 102
    .local v4, "serverMaxWindowBits":Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 103
    .local v5, "serverNoContextTakeover":Z
    const/4 v6, 0x0

    .line 106
    .local v6, "unexpectedValues":Z
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Headers;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_14

    move v9, v8

    .local v9, "i":I
    add-int/lit8 v8, v8, 0x1

    .line 107
    invoke-virtual {v0, v9}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Sec-WebSocket-Extensions"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_0

    .line 108
    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v0, v9}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    .line 113
    .local v10, "header":Ljava/lang/String;
    const/4 v11, 0x0

    .line 114
    .local v11, "pos":I
    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v11, v13, :cond_13

    .line 115
    const/16 v14, 0x2c

    const/16 v16, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object v13, v10

    move v15, v11

    invoke-static/range {v13 .. v18}, Lokhttp3/internal/Util;->delimiterOffset$default(Ljava/lang/String;CIIILjava/lang/Object;)I

    move-result v13

    .line 116
    .local v13, "extensionEnd":I
    const/16 v14, 0x3b

    invoke-static {v10, v14, v11, v13}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v15

    .line 117
    .local v15, "extensionTokenEnd":I
    invoke-static {v10, v11, v15}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v14

    .line 118
    .local v14, "extensionToken":Ljava/lang/String;
    add-int/lit8 v11, v15, 0x1

    .line 120
    nop

    .line 121
    const-string v0, "permessage-deflate"

    invoke-static {v14, v0, v12}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 122
    if-eqz v1, :cond_1

    const/4 v6, 0x1

    .line 123
    :cond_1
    const/4 v1, 0x1

    .line 126
    :goto_2
    if-ge v11, v13, :cond_11

    .line 127
    const/16 v0, 0x3b

    invoke-static {v10, v0, v11, v13}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v12

    .line 128
    .local v12, "parameterEnd":I
    const/16 v0, 0x3d

    invoke-static {v10, v0, v11, v12}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v0

    .line 129
    .local v0, "equals":I
    move/from16 v18, v1

    .end local v1    # "compressionEnabled":Z
    .local v18, "compressionEnabled":Z
    invoke-static {v10, v11, v0}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "name":Ljava/lang/String;
    const/16 v19, 0x0

    if-ge v0, v12, :cond_2

    .line 131
    move/from16 v20, v6

    .end local v6    # "unexpectedValues":Z
    .local v20, "unexpectedValues":Z
    add-int/lit8 v6, v0, 0x1

    invoke-static {v10, v6, v12}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    const-string v21, "\""

    move/from16 v22, v0

    .end local v0    # "equals":I
    .local v22, "equals":I
    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v6, v0}, Lkotlin/text/StringsKt;->removeSurrounding(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 133
    .end local v20    # "unexpectedValues":Z
    .end local v22    # "equals":I
    .restart local v0    # "equals":I
    .restart local v6    # "unexpectedValues":Z
    :cond_2
    move/from16 v22, v0

    move/from16 v20, v6

    .end local v0    # "equals":I
    .end local v6    # "unexpectedValues":Z
    .restart local v20    # "unexpectedValues":Z
    .restart local v22    # "equals":I
    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/String;

    move-object/from16 v0, v19

    .line 130
    :goto_3
    nop

    .line 135
    .local v0, "value":Ljava/lang/String;
    add-int/lit8 v11, v12, 0x1

    .line 136
    nop

    .line 137
    const-string v6, "client_max_window_bits"

    move/from16 v21, v7

    const/4 v7, 0x1

    invoke-static {v1, v6, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 138
    if-eqz v2, :cond_3

    const/4 v6, 0x1

    .end local v20    # "unexpectedValues":Z
    .restart local v6    # "unexpectedValues":Z
    goto :goto_4

    .end local v6    # "unexpectedValues":Z
    .restart local v20    # "unexpectedValues":Z
    :cond_3
    move/from16 v6, v20

    .line 139
    .end local v20    # "unexpectedValues":Z
    .restart local v6    # "unexpectedValues":Z
    :goto_4
    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    :goto_5
    move-object/from16 v2, v19

    .line 140
    if-nez v2, :cond_5

    const/4 v6, 0x1

    :cond_5
    move/from16 v1, v18

    move/from16 v7, v21

    const/4 v12, 0x1

    goto :goto_2

    .line 142
    .end local v6    # "unexpectedValues":Z
    .restart local v20    # "unexpectedValues":Z
    :cond_6
    const-string v6, "client_no_context_takeover"

    const/4 v7, 0x1

    invoke-static {v1, v6, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 143
    if-eqz v3, :cond_7

    const/4 v6, 0x1

    .end local v20    # "unexpectedValues":Z
    .restart local v6    # "unexpectedValues":Z
    goto :goto_6

    .end local v6    # "unexpectedValues":Z
    .restart local v20    # "unexpectedValues":Z
    :cond_7
    move/from16 v6, v20

    .line 144
    .end local v20    # "unexpectedValues":Z
    .restart local v6    # "unexpectedValues":Z
    :goto_6
    if-eqz v0, :cond_8

    const/4 v6, 0x1

    .line 145
    :cond_8
    const/4 v3, 0x1

    move/from16 v1, v18

    move/from16 v7, v21

    const/4 v12, 0x1

    goto :goto_2

    .line 147
    .end local v6    # "unexpectedValues":Z
    .restart local v20    # "unexpectedValues":Z
    :cond_9
    const-string v6, "server_max_window_bits"

    const/4 v7, 0x1

    invoke-static {v1, v6, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 148
    if-eqz v4, :cond_a

    const/4 v6, 0x1

    .end local v20    # "unexpectedValues":Z
    .restart local v6    # "unexpectedValues":Z
    goto :goto_7

    .end local v6    # "unexpectedValues":Z
    .restart local v20    # "unexpectedValues":Z
    :cond_a
    move/from16 v6, v20

    .line 149
    .end local v20    # "unexpectedValues":Z
    .restart local v6    # "unexpectedValues":Z
    :goto_7
    if-nez v0, :cond_b

    goto :goto_8

    :cond_b
    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    :goto_8
    move-object/from16 v4, v19

    .line 150
    if-nez v4, :cond_c

    const/4 v6, 0x1

    :cond_c
    move/from16 v1, v18

    move/from16 v7, v21

    const/4 v12, 0x1

    goto/16 :goto_2

    .line 152
    .end local v6    # "unexpectedValues":Z
    .restart local v20    # "unexpectedValues":Z
    :cond_d
    const-string v6, "server_no_context_takeover"

    const/4 v7, 0x1

    invoke-static {v1, v6, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 153
    if-eqz v5, :cond_e

    const/4 v6, 0x1

    .end local v20    # "unexpectedValues":Z
    .restart local v6    # "unexpectedValues":Z
    goto :goto_9

    .end local v6    # "unexpectedValues":Z
    .restart local v20    # "unexpectedValues":Z
    :cond_e
    move/from16 v6, v20

    .line 154
    .end local v20    # "unexpectedValues":Z
    .restart local v6    # "unexpectedValues":Z
    :goto_9
    if-eqz v0, :cond_f

    const/4 v6, 0x1

    .line 155
    :cond_f
    const/4 v5, 0x1

    move v12, v7

    move/from16 v1, v18

    move/from16 v7, v21

    goto/16 :goto_2

    .line 158
    .end local v6    # "unexpectedValues":Z
    .restart local v20    # "unexpectedValues":Z
    :cond_10
    const/4 v6, 0x1

    move v12, v7

    move/from16 v1, v18

    move/from16 v7, v21

    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v12    # "parameterEnd":I
    .end local v20    # "unexpectedValues":Z
    .end local v22    # "equals":I
    .restart local v6    # "unexpectedValues":Z
    goto/16 :goto_2

    .line 126
    .end local v18    # "compressionEnabled":Z
    .local v1, "compressionEnabled":Z
    :cond_11
    move/from16 v18, v1

    move/from16 v20, v6

    move/from16 v21, v7

    move v7, v12

    .end local v1    # "compressionEnabled":Z
    .end local v6    # "unexpectedValues":Z
    .restart local v18    # "compressionEnabled":Z
    .restart local v20    # "unexpectedValues":Z
    move-object/from16 v0, p1

    move/from16 v7, v21

    goto/16 :goto_1

    .line 165
    .end local v18    # "compressionEnabled":Z
    .end local v20    # "unexpectedValues":Z
    .restart local v1    # "compressionEnabled":Z
    .restart local v6    # "unexpectedValues":Z
    :cond_12
    move/from16 v21, v7

    move v7, v12

    const/4 v6, 0x1

    move-object/from16 v0, p1

    move/from16 v7, v21

    .end local v13    # "extensionEnd":I
    .end local v14    # "extensionToken":Ljava/lang/String;
    .end local v15    # "extensionTokenEnd":I
    goto/16 :goto_1

    .line 114
    :cond_13
    move/from16 v21, v7

    move-object/from16 v0, p1

    goto/16 :goto_0

    .line 171
    .end local v9    # "i":I
    .end local v10    # "header":Ljava/lang/String;
    .end local v11    # "pos":I
    :cond_14
    new-instance v0, Lokhttp3/internal/ws/WebSocketExtensions;

    .line 172
    nop

    .line 173
    nop

    .line 174
    nop

    .line 175
    nop

    .line 176
    nop

    .line 177
    nop

    .line 171
    move-object v9, v0

    move v10, v1

    move-object v11, v2

    move v12, v3

    move-object v13, v4

    move v14, v5

    move v15, v6

    invoke-direct/range {v9 .. v15}, Lokhttp3/internal/ws/WebSocketExtensions;-><init>(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V

    return-object v0
.end method
