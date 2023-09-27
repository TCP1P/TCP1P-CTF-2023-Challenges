.class public Lokio/ByteString;
.super Ljava/lang/Object;
.source "ByteString.kt"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/ByteString$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lokio/ByteString;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/ByteString\n+ 2 -ByteString.kt\nokio/internal/_ByteStringKt\n+ 3 -Util.kt\nokio/_UtilKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,363:1\n41#2,7:364\n51#2:371\n54#2:372\n62#2,4:373\n66#2:378\n68#2:380\n74#2,23:381\n102#2,23:404\n129#2,2:427\n131#2,9:430\n143#2:439\n146#2:440\n149#2:441\n152#2:442\n160#2:443\n170#2,3:444\n169#2:447\n183#2,2:448\n188#2:450\n192#2:451\n196#2:452\n200#2:453\n204#2,7:454\n217#2:461\n221#2,8:462\n233#2,4:470\n242#2,5:474\n251#2,6:479\n257#2,9:486\n319#2,8:495\n129#2,2:503\n131#2,9:506\n330#2,9:515\n66#3:377\n72#3:379\n72#3:485\n1#4:429\n1#4:505\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/ByteString\n*L\n66#1:364,7\n71#1:371\n108#1:372\n110#1:373,4\n110#1:378\n110#1:380\n112#1:381,23\n114#1:404,23\n118#1:427,2\n118#1:430,9\n120#1:439\n128#1:440\n130#1:441\n132#1:442\n151#1:443\n158#1:444,3\n158#1:447\n165#1:448,2\n167#1:450\n169#1:451\n171#1:452\n173#1:453\n179#1:454,7\n182#1:461\n185#1:462,8\n187#1:470,4\n189#1:474,5\n191#1:479,6\n191#1:486,9\n193#1:495,8\n193#1:503,2\n193#1:506,9\n193#1:515,9\n110#1:377\n110#1:379\n191#1:485\n118#1:429\n193#1:505\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 ]2\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002:\u0001]B\u000f\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0010H\u0016J\u0008\u0010\u0018\u001a\u00020\u0010H\u0016J\u0011\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0000H\u0096\u0002J,\u0010\u001b\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\tH\u0016J\u0015\u0010!\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u0010H\u0010\u00a2\u0006\u0002\u0008#J\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0004J\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0000J\u0013\u0010\'\u001a\u00020%2\u0008\u0010\u001a\u001a\u0004\u0018\u00010(H\u0096\u0002J\u0016\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\tH\u0087\u0002\u00a2\u0006\u0002\u0008,J\u0015\u0010,\u001a\u00020*2\u0006\u0010+\u001a\u00020\tH\u0007\u00a2\u0006\u0002\u0008-J\r\u0010.\u001a\u00020\tH\u0010\u00a2\u0006\u0002\u0008/J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u00100\u001a\u00020\u0010H\u0016J\u001d\u00101\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u00102\u0006\u00102\u001a\u00020\u0000H\u0010\u00a2\u0006\u0002\u00083J\u0010\u00104\u001a\u00020\u00002\u0006\u00102\u001a\u00020\u0000H\u0016J\u0010\u00105\u001a\u00020\u00002\u0006\u00102\u001a\u00020\u0000H\u0016J\u0010\u00106\u001a\u00020\u00002\u0006\u00102\u001a\u00020\u0000H\u0016J\u001a\u00107\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00042\u0008\u0008\u0002\u00108\u001a\u00020\tH\u0017J\u001a\u00107\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u00108\u001a\u00020\tH\u0007J\r\u00109\u001a\u00020\u0004H\u0010\u00a2\u0006\u0002\u0008:J\u0015\u0010;\u001a\u00020*2\u0006\u0010<\u001a\u00020\tH\u0010\u00a2\u0006\u0002\u0008=J\u001a\u0010>\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00042\u0008\u0008\u0002\u00108\u001a\u00020\tH\u0017J\u001a\u0010>\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u00108\u001a\u00020\tH\u0007J\u0006\u0010?\u001a\u00020\u0000J(\u0010@\u001a\u00020%2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010A\u001a\u00020\t2\u0006\u0010 \u001a\u00020\tH\u0016J(\u0010@\u001a\u00020%2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00002\u0006\u0010A\u001a\u00020\t2\u0006\u0010 \u001a\u00020\tH\u0016J\u0010\u0010B\u001a\u00020\u001c2\u0006\u0010C\u001a\u00020DH\u0002J\u0006\u0010E\u001a\u00020\u0000J\u0006\u0010F\u001a\u00020\u0000J\u0006\u0010G\u001a\u00020\u0000J\r\u0010\u000e\u001a\u00020\tH\u0007\u00a2\u0006\u0002\u0008HJ\u000e\u0010I\u001a\u00020%2\u0006\u0010J\u001a\u00020\u0004J\u000e\u0010I\u001a\u00020%2\u0006\u0010J\u001a\u00020\u0000J\u0010\u0010K\u001a\u00020\u00102\u0006\u0010L\u001a\u00020MH\u0016J\u001c\u0010N\u001a\u00020\u00002\u0008\u0008\u0002\u0010O\u001a\u00020\t2\u0008\u0008\u0002\u0010P\u001a\u00020\tH\u0017J\u0008\u0010Q\u001a\u00020\u0000H\u0016J\u0008\u0010R\u001a\u00020\u0000H\u0016J\u0008\u0010S\u001a\u00020\u0004H\u0016J\u0008\u0010T\u001a\u00020\u0010H\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010U\u001a\u00020\u001c2\u0006\u0010V\u001a\u00020WH\u0016J%\u0010U\u001a\u00020\u001c2\u0006\u0010X\u001a\u00020Y2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010 \u001a\u00020\tH\u0010\u00a2\u0006\u0002\u0008ZJ\u0010\u0010[\u001a\u00020\u001c2\u0006\u0010V\u001a\u00020\\H\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\t8G\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006^"
    }
    d2 = {
        "Lokio/ByteString;",
        "Ljava/io/Serializable;",
        "",
        "data",
        "",
        "([B)V",
        "getData$okio",
        "()[B",
        "hashCode",
        "",
        "getHashCode$okio",
        "()I",
        "setHashCode$okio",
        "(I)V",
        "size",
        "utf8",
        "",
        "getUtf8$okio",
        "()Ljava/lang/String;",
        "setUtf8$okio",
        "(Ljava/lang/String;)V",
        "asByteBuffer",
        "Ljava/nio/ByteBuffer;",
        "base64",
        "base64Url",
        "compareTo",
        "other",
        "copyInto",
        "",
        "offset",
        "target",
        "targetOffset",
        "byteCount",
        "digest",
        "algorithm",
        "digest$okio",
        "endsWith",
        "",
        "suffix",
        "equals",
        "",
        "get",
        "",
        "index",
        "getByte",
        "-deprecated_getByte",
        "getSize",
        "getSize$okio",
        "hex",
        "hmac",
        "key",
        "hmac$okio",
        "hmacSha1",
        "hmacSha256",
        "hmacSha512",
        "indexOf",
        "fromIndex",
        "internalArray",
        "internalArray$okio",
        "internalGet",
        "pos",
        "internalGet$okio",
        "lastIndexOf",
        "md5",
        "rangeEquals",
        "otherOffset",
        "readObject",
        "in",
        "Ljava/io/ObjectInputStream;",
        "sha1",
        "sha256",
        "sha512",
        "-deprecated_size",
        "startsWith",
        "prefix",
        "string",
        "charset",
        "Ljava/nio/charset/Charset;",
        "substring",
        "beginIndex",
        "endIndex",
        "toAsciiLowercase",
        "toAsciiUppercase",
        "toByteArray",
        "toString",
        "write",
        "out",
        "Ljava/io/OutputStream;",
        "buffer",
        "Lokio/Buffer;",
        "write$okio",
        "writeObject",
        "Ljava/io/ObjectOutputStream;",
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
.field public static final Companion:Lokio/ByteString$Companion;

.field public static final EMPTY:Lokio/ByteString;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final data:[B

.field private transient hashCode:I

.field private transient utf8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokio/ByteString$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/ByteString$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    .line 230
    new-instance v0, Lokio/ByteString;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    sput-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lokio/ByteString;->data:[B

    .line 60
    return-void
.end method

.method public static synthetic copyInto$default(Lokio/ByteString;I[BIIILjava/lang/Object;)V
    .locals 1

    .line 160
    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 171
    move p1, v0

    .line 160
    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 173
    move p3, v0

    .line 160
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lokio/ByteString;->copyInto(I[BII)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: copyInto"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final decodeBase64(Ljava/lang/String;)Lokio/ByteString;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p0}, Lokio/ByteString$Companion;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static final decodeHex(Ljava/lang/String;)Lokio/ByteString;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p0}, Lokio/ByteString$Companion;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/ByteString;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p0, p1}, Lokio/ByteString$Companion;->encodeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p0}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic indexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I
    .locals 0

    .line 176
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 181
    const/4 p2, 0x0

    .line 176
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->indexOf(Lokio/ByteString;I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: indexOf"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic indexOf$default(Lokio/ByteString;[BIILjava/lang/Object;)I
    .locals 0

    .line 179
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 182
    const/4 p2, 0x0

    .line 179
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->indexOf([BI)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: indexOf"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic lastIndexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I
    .locals 0

    .line 182
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 185
    invoke-static {}, Lokio/_UtilKt;->getDEFAULT__ByteString_size()I

    move-result p2

    .line 182
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->lastIndexOf(Lokio/ByteString;I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: lastIndexOf"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic lastIndexOf$default(Lokio/ByteString;[BIILjava/lang/Object;)I
    .locals 0

    .line 185
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, Lokio/_UtilKt;->getDEFAULT__ByteString_size()I

    move-result p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: lastIndexOf"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final of(Ljava/nio/ByteBuffer;)Lokio/ByteString;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p0}, Lokio/ByteString$Companion;->of(Ljava/nio/ByteBuffer;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs of([B)Lokio/ByteString;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p0}, Lokio/ByteString$Companion;->of([B)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static final of([BII)Lokio/ByteString;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lokio/ByteString$Companion;->of([BII)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static final read(Ljava/io/InputStream;I)Lokio/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p0, p1}, Lokio/ByteString$Companion;->read(Ljava/io/InputStream;I)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 198
    .local v0, "dataLength":I
    sget-object v1, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    move-object v2, p1

    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {v1, v2, v0}, Lokio/ByteString$Companion;->read(Ljava/io/InputStream;I)Lokio/ByteString;

    move-result-object v1

    .line 199
    .local v1, "byteString":Lokio/ByteString;
    const-string v2, "data"

    const-class v3, Lokio/ByteString;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 200
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 201
    iget-object v3, v1, Lokio/ByteString;->data:[B

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public static synthetic substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;
    .locals 0

    .line 117
    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 108
    const/4 p1, 0x0

    .line 117
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 108
    invoke-static {}, Lokio/_UtilKt;->getDEFAULT__ByteString_size()I

    move-result p2

    .line 117
    :cond_1
    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: substring"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 207
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 208
    return-void
.end method


# virtual methods
.method public final -deprecated_getByte(I)B
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to operator function"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this[index]"
            imports = {}
        .end subannotation
    .end annotation

    .line 216
    invoke-virtual {p0, p1}, Lokio/ByteString;->getByte(I)B

    move-result v0

    return v0
.end method

.method public final -deprecated_size()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "size"
            imports = {}
        .end subannotation
    .end annotation

    .line 224
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    return v0
.end method

.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 135
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, "wrap(data).asReadOnlyBuffer()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .locals 5

    .line 71
    move-object v0, p0

    .local v0, "$this$commonBase64$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 371
    .local v1, "$i$f$commonBase64":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v3}, Lokio/_Base64Kt;->encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .end local v0    # "$this$commonBase64$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonBase64":I
    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 4

    .line 108
    move-object v0, p0

    .local v0, "$this$commonBase64Url$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 372
    .local v1, "$i$f$commonBase64Url":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    invoke-static {}, Lokio/_Base64Kt;->getBASE64_URL_SAFE()[B

    move-result-object v3

    invoke-static {v2, v3}, Lokio/_Base64Kt;->encodeBase64([B[B)Ljava/lang/String;

    move-result-object v0

    .line 108
    .end local v0    # "$this$commonBase64Url$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonBase64Url":I
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 59
    move-object v0, p1

    check-cast v0, Lokio/ByteString;

    invoke-virtual {p0, v0}, Lokio/ByteString;->compareTo(Lokio/ByteString;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lokio/ByteString;)I
    .locals 12
    .param p1, "other"    # Lokio/ByteString;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    move-object v0, p0

    .local v0, "$this$commonCompareTo$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 479
    .local v1, "$i$f$commonCompareTo":I
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v2

    .line 480
    .local v2, "sizeA$iv":I
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v3

    .line 481
    .local v3, "sizeB$iv":I
    const/4 v4, 0x0

    .line 482
    .local v4, "i$iv":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 483
    .local v5, "size$iv":I
    :goto_0
    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ge v4, v5, :cond_2

    .line 484
    invoke-virtual {v0, v4}, Lokio/ByteString;->getByte(I)B

    move-result v8

    .local v8, "$this$and$iv$iv":B
    const/16 v9, 0xff

    .local v9, "other$iv$iv":I
    const/4 v10, 0x0

    .line 485
    .local v10, "$i$f$and":I
    and-int/2addr v8, v9

    .line 484
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "other$iv$iv":I
    .end local v10    # "$i$f$and":I
    nop

    .line 486
    .local v8, "byteA$iv":I
    invoke-virtual {p1, v4}, Lokio/ByteString;->getByte(I)B

    move-result v9

    .local v9, "$this$and$iv$iv":B
    const/16 v10, 0xff

    .local v10, "other$iv$iv":I
    const/4 v11, 0x0

    .line 485
    .local v11, "$i$f$and":I
    and-int/2addr v9, v10

    .line 486
    .end local v9    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":I
    .end local v11    # "$i$f$and":I
    nop

    .line 487
    .local v9, "byteB$iv":I
    if-ne v8, v9, :cond_0

    .line 488
    add-int/lit8 v4, v4, 0x1

    .line 489
    goto :goto_0

    .line 491
    :cond_0
    if-ge v8, v9, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    goto :goto_1

    .line 493
    .end local v8    # "byteA$iv":I
    .end local v9    # "byteB$iv":I
    :cond_2
    if-ne v2, v3, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    .line 494
    :cond_3
    if-ge v2, v3, :cond_4

    goto :goto_1

    :cond_4
    move v6, v7

    .line 191
    .end local v0    # "$this$commonCompareTo$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonCompareTo":I
    .end local v2    # "sizeA$iv":I
    .end local v3    # "sizeB$iv":I
    .end local v4    # "i$iv":I
    .end local v5    # "size$iv":I
    :goto_1
    return v6
.end method

.method public copyInto(I[BII)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "target"    # [B
    .param p3, "targetOffset"    # I
    .param p4, "byteCount"    # I

    const-string/jumbo v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    move-object v0, p0

    .local v0, "$this$commonCopyInto$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 448
    .local v1, "$i$f$commonCopyInto":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    add-int v3, p1, p4

    invoke-static {v2, p2, p3, p1, v3}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 449
    nop

    .line 165
    .end local v0    # "$this$commonCopyInto$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonCopyInto":I
    return-void
.end method

.method public digest$okio(Ljava/lang/String;)Lokio/ByteString;
    .locals 5
    .param p1, "algorithm"    # Ljava/lang/String;

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .local v0, "$this$digest_u24lambda_u2d0":Ljava/security/MessageDigest;
    const/4 v1, 0x0

    .line 83
    .local v1, "$i$a$-run-ByteString$digest$digestBytes$1":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 84
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 82
    .end local v0    # "$this$digest_u24lambda_u2d0":Ljava/security/MessageDigest;
    .end local v1    # "$i$a$-run-ByteString$digest$digestBytes$1":I
    nop

    .line 86
    .local v0, "digestBytes":[B
    new-instance v1, Lokio/ByteString;

    const-string v2, "digestBytes"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lokio/ByteString;-><init>([B)V

    return-object v1
.end method

.method public final endsWith(Lokio/ByteString;)Z
    .locals 5
    .param p1, "suffix"    # Lokio/ByteString;

    const-string/jumbo v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    move-object v0, p0

    .local v0, "$this$commonEndsWith$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 452
    .local v1, "$i$f$commonEndsWith":I
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v4

    invoke-virtual {v0, v2, p1, v3, v4}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v0

    .line 171
    .end local v0    # "$this$commonEndsWith$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonEndsWith":I
    return v0
.end method

.method public final endsWith([B)Z
    .locals 5
    .param p1, "suffix"    # [B

    const-string/jumbo v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    move-object v0, p0

    .local v0, "$this$commonEndsWith$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 453
    .local v1, "$i$f$commonEndsWith":I
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v2

    array-length v3, p1

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    array-length v4, p1

    invoke-virtual {v0, v2, p1, v3, v4}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    .line 173
    .end local v0    # "$this$commonEndsWith$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonEndsWith":I
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 187
    move-object v0, p0

    .local v0, "$this$commonEquals$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 470
    .local v1, "$i$f$commonEquals":I
    nop

    .line 471
    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    instance-of v3, p1, Lokio/ByteString;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v5

    array-length v5, v5

    if-ne v3, v5, :cond_1

    move-object v3, p1

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v5

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v3, v4, v5, v4, v6}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0

    .line 473
    :cond_2
    move v2, v4

    .line 470
    :goto_0
    nop

    .line 187
    .end local v0    # "$this$commonEquals$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonEquals":I
    return v2
.end method

.method public final getByte(I)B
    .locals 1
    .param p1, "index"    # I

    .line 123
    invoke-virtual {p0, p1}, Lokio/ByteString;->internalGet$okio(I)B

    move-result v0

    return v0
.end method

.method public final getData$okio()[B
    .locals 1

    .line 61
    iget-object v0, p0, Lokio/ByteString;->data:[B

    return-object v0
.end method

.method public final getHashCode$okio()I
    .locals 1

    .line 63
    iget v0, p0, Lokio/ByteString;->hashCode:I

    return v0
.end method

.method public getSize$okio()I
    .locals 3

    .line 128
    move-object v0, p0

    .local v0, "$this$commonGetSize$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 440
    .local v1, "$i$f$commonGetSize":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    array-length v0, v2

    .line 128
    .end local v0    # "$this$commonGetSize$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonGetSize":I
    return v0
.end method

.method public final getUtf8$okio()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 189
    move-object v0, p0

    .local v0, "$this$commonHashCode$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 474
    .local v1, "$i$f$commonHashCode":I
    invoke-virtual {v0}, Lokio/ByteString;->getHashCode$okio()I

    move-result v2

    .line 475
    .local v2, "result$iv":I
    if-eqz v2, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    move v4, v3

    .local v4, "it$iv":I
    const/4 v5, 0x0

    .line 477
    .local v5, "$i$a$-also-_ByteStringKt$commonHashCode$1$iv":I
    invoke-virtual {v0, v4}, Lokio/ByteString;->setHashCode$okio(I)V

    .line 478
    nop

    .line 476
    .end local v4    # "it$iv":I
    .end local v5    # "$i$a$-also-_ByteStringKt$commonHashCode$1$iv":I
    move v2, v3

    .line 189
    .end local v0    # "$this$commonHashCode$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonHashCode":I
    .end local v2    # "result$iv":I
    :goto_0
    return v2
.end method

.method public hex()Ljava/lang/String;
    .locals 13

    .line 110
    move-object v0, p0

    .local v0, "$this$commonHex$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 373
    .local v1, "$i$f$commonHex":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    .line 374
    .local v2, "result$iv":[C
    const/4 v3, 0x0

    .line 375
    .local v3, "c$iv":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-byte v7, v4, v6

    .local v7, "b$iv":B
    add-int/lit8 v6, v6, 0x1

    .line 376
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "c$iv":I
    .local v8, "c$iv":I
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v9

    const/4 v10, 0x4

    .local v10, "other$iv$iv":I
    move v11, v7

    .local v11, "$this$shr$iv$iv":B
    const/4 v12, 0x0

    .line 377
    .local v12, "$i$f$shr":I
    shr-int v10, v11, v10

    .line 376
    .end local v10    # "other$iv$iv":I
    .end local v11    # "$this$shr$iv$iv":B
    .end local v12    # "$i$f$shr":I
    and-int/lit8 v10, v10, 0xf

    aget-char v9, v9, v10

    aput-char v9, v2, v3

    .line 378
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "c$iv":I
    .restart local v3    # "c$iv":I
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v9

    const/16 v10, 0xf

    .restart local v10    # "other$iv$iv":I
    .local v11, "$this$and$iv$iv":B
    const/4 v12, 0x0

    .line 379
    .local v12, "$i$f$and":I
    and-int/2addr v10, v11

    .end local v10    # "other$iv$iv":I
    .end local v11    # "$this$and$iv$iv":B
    .end local v12    # "$i$f$and":I
    aget-char v9, v9, v10

    aput-char v9, v2, v8

    goto :goto_0

    .line 380
    .end local v7    # "b$iv":B
    :cond_0
    invoke-static {v2}, Lkotlin/text/StringsKt;->concatToString([C)Ljava/lang/String;

    move-result-object v0

    .line 110
    .end local v0    # "$this$commonHex$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonHex":I
    .end local v2    # "result$iv":[C
    .end local v3    # "c$iv":I
    return-object v0
.end method

.method public hmac$okio(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lokio/ByteString;

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    nop

    .line 100
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 101
    .local v0, "mac":Ljavax/crypto/Mac;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    check-cast v1, Ljava/security/Key;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 102
    new-instance v1, Lokio/ByteString;

    iget-object v2, p0, Lokio/ByteString;->data:[B

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    const-string v3, "mac.doFinal(data)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 103
    .end local v0    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    const-string v0, "HmacSHA1"

    invoke-virtual {p0, v0, p1}, Lokio/ByteString;->hmac$okio(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    const-string v0, "HmacSHA256"

    invoke-virtual {p0, v0, p1}, Lokio/ByteString;->hmac$okio(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hmacSha512(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    const-string v0, "HmacSHA512"

    invoke-virtual {p0, v0, p1}, Lokio/ByteString;->hmac$okio(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final indexOf(Lokio/ByteString;)I
    .locals 3

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lokio/ByteString;->indexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final indexOf(Lokio/ByteString;I)I
    .locals 1
    .param p1, "other"    # Lokio/ByteString;
    .param p2, "fromIndex"    # I

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lokio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method public final indexOf([B)I
    .locals 3

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lokio/ByteString;->indexOf$default(Lokio/ByteString;[BIILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public indexOf([BI)I
    .locals 8
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    move-object v0, p0

    .local v0, "$this$commonIndexOf$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 454
    .local v1, "$i$f$commonIndexOf":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    array-length v2, v2

    array-length v3, p1

    sub-int/2addr v2, v3

    .line 455
    .local v2, "limit$iv":I
    const/4 v3, 0x0

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-gt v4, v2, :cond_2

    :cond_0
    move v5, v4

    .local v5, "i$iv":I
    add-int/lit8 v4, v4, 0x1

    .line 456
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v6

    array-length v7, p1

    invoke-static {v6, v5, p1, v3, v7}, Lokio/_UtilKt;->arrayRangeEquals([BI[BII)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 457
    goto :goto_0

    .line 455
    :cond_1
    if-ne v5, v2, :cond_0

    .line 460
    .end local v5    # "i$iv":I
    :cond_2
    const/4 v5, -0x1

    .line 179
    .end local v0    # "$this$commonIndexOf$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonIndexOf":I
    .end local v2    # "limit$iv":I
    :goto_0
    return v5
.end method

.method public internalArray$okio()[B
    .locals 2

    .line 132
    move-object v0, p0

    .local v0, "$this$commonInternalArray$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 442
    .local v1, "$i$f$commonInternalArray":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    .line 132
    .end local v0    # "$this$commonInternalArray$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonInternalArray":I
    return-object v0
.end method

.method public internalGet$okio(I)B
    .locals 3
    .param p1, "pos"    # I

    .line 120
    move-object v0, p0

    .local v0, "$this$commonGetByte$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 439
    .local v1, "$i$f$commonGetByte":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    aget-byte v0, v2, p1

    .line 120
    .end local v0    # "$this$commonGetByte$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonGetByte":I
    return v0
.end method

.method public final lastIndexOf(Lokio/ByteString;)I
    .locals 3

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lokio/ByteString;->lastIndexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final lastIndexOf(Lokio/ByteString;I)I
    .locals 3
    .param p1, "other"    # Lokio/ByteString;
    .param p2, "fromIndex"    # I

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    move-object v0, p0

    .local v0, "$this$commonLastIndexOf$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 461
    .local v1, "$i$f$commonLastIndexOf":I
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result v0

    .line 182
    .end local v0    # "$this$commonLastIndexOf$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonLastIndexOf":I
    return v0
.end method

.method public final lastIndexOf([B)I
    .locals 3

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lokio/ByteString;->lastIndexOf$default(Lokio/ByteString;[BIILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf([BI)I
    .locals 10
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    move-object v0, p0

    .local v0, "$this$commonLastIndexOf$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 462
    .local v1, "$i$f$commonLastIndexOf":I
    invoke-static {v0, p2}, Lokio/_UtilKt;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result v2

    .line 463
    .local v2, "fromIndex$iv":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    array-length v3, v3

    array-length v4, p1

    sub-int/2addr v3, v4

    .line 464
    .local v3, "limit$iv":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, -0x1

    if-ltz v4, :cond_2

    :cond_0
    move v6, v4

    .local v6, "i$iv":I
    add-int/2addr v4, v5

    .line 465
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v7

    const/4 v8, 0x0

    array-length v9, p1

    invoke-static {v7, v6, p1, v8, v9}, Lokio/_UtilKt;->arrayRangeEquals([BI[BII)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 466
    move v5, v6

    goto :goto_0

    .line 464
    :cond_1
    if-gez v4, :cond_0

    .line 469
    .end local v6    # "i$iv":I
    :cond_2
    nop

    .line 185
    .end local v0    # "$this$commonLastIndexOf$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonLastIndexOf":I
    .end local v2    # "fromIndex$iv":I
    .end local v3    # "limit$iv":I
    :goto_0
    return v5
.end method

.method public final md5()Lokio/ByteString;
    .locals 1

    .line 73
    const-string v0, "MD5"

    invoke-virtual {p0, v0}, Lokio/ByteString;->digest$okio(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .locals 3
    .param p1, "offset"    # I
    .param p2, "other"    # Lokio/ByteString;
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    move-object v0, p0

    .local v0, "$this$commonRangeEquals$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 443
    .local v1, "$i$f$commonRangeEquals":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    invoke-virtual {p2, p3, v2, p1, p4}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    .line 151
    .end local v0    # "$this$commonRangeEquals$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonRangeEquals":I
    return v0
.end method

.method public rangeEquals(I[BII)Z
    .locals 3
    .param p1, "offset"    # I
    .param p2, "other"    # [B
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    move-object v0, p0

    .local v0, "$this$commonRangeEquals$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 444
    .local v1, "$i$f$commonRangeEquals":I
    if-ltz p1, :cond_0

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, p4

    if-gt p1, v2, :cond_0

    .line 445
    if-ltz p3, :cond_0

    array-length v2, p2

    sub-int/2addr v2, p4

    if-gt p3, v2, :cond_0

    .line 446
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    invoke-static {v2, p1, p2, p3, p4}, Lokio/_UtilKt;->arrayRangeEquals([BI[BII)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 447
    :goto_0
    nop

    .line 158
    .end local v0    # "$this$commonRangeEquals$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonRangeEquals":I
    return v2
.end method

.method public final setHashCode$okio(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 63
    iput p1, p0, Lokio/ByteString;->hashCode:I

    return-void
.end method

.method public final setUtf8$okio(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    return-void
.end method

.method public final sha1()Lokio/ByteString;
    .locals 1

    .line 75
    const-string v0, "SHA-1"

    invoke-virtual {p0, v0}, Lokio/ByteString;->digest$okio(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha256()Lokio/ByteString;
    .locals 1

    .line 77
    const-string v0, "SHA-256"

    invoke-virtual {p0, v0}, Lokio/ByteString;->digest$okio(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha512()Lokio/ByteString;
    .locals 1

    .line 79
    const-string v0, "SHA-512"

    invoke-virtual {p0, v0}, Lokio/ByteString;->digest$okio(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 126
    invoke-virtual {p0}, Lokio/ByteString;->getSize$okio()I

    move-result v0

    return v0
.end method

.method public final startsWith(Lokio/ByteString;)Z
    .locals 4
    .param p1, "prefix"    # Lokio/ByteString;

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    move-object v0, p0

    .local v0, "$this$commonStartsWith$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 450
    .local v1, "$i$f$commonStartsWith":I
    const/4 v2, 0x0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v3

    invoke-virtual {v0, v2, p1, v2, v3}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v0

    .line 167
    .end local v0    # "$this$commonStartsWith$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonStartsWith":I
    return v0
.end method

.method public final startsWith([B)Z
    .locals 4
    .param p1, "prefix"    # [B

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    move-object v0, p0

    .local v0, "$this$commonStartsWith$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 451
    .local v1, "$i$f$commonStartsWith":I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v0, v2, p1, v2, v3}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    .line 169
    .end local v0    # "$this$commonStartsWith$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonStartsWith":I
    return v0
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lokio/ByteString;->data:[B

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public final substring()Lokio/ByteString;
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final substring(I)Lokio/ByteString;
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lokio/ByteString;
    .locals 6
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 118
    move-object v0, p0

    .local v0, "$this$commonSubstring$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 427
    .local v1, "$i$f$commonSubstring":I
    invoke-static {v0, p2}, Lokio/_UtilKt;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result v2

    .line 428
    .local v2, "endIndex$iv":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz p1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-eqz v5, :cond_6

    .line 430
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v5

    array-length v5, v5

    if-gt v2, v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    if-eqz v5, :cond_5

    .line 432
    sub-int v5, v2, p1

    .line 433
    .local v5, "subLen$iv":I
    if-ltz v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    if-eqz v3, :cond_4

    .line 435
    if-nez p1, :cond_3

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    array-length v3, v3

    if-ne v2, v3, :cond_3

    .line 436
    goto :goto_3

    .line 438
    :cond_3
    new-instance v3, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v4

    invoke-static {v4, p1, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lokio/ByteString;-><init>([B)V

    move-object v0, v3

    .line 118
    .end local v0    # "$this$commonSubstring$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonSubstring":I
    .end local v2    # "endIndex$iv":I
    .end local v5    # "subLen$iv":I
    :goto_3
    return-object v0

    .line 429
    .restart local v0    # "$this$commonSubstring$iv":Lokio/ByteString;
    .restart local v1    # "$i$f$commonSubstring":I
    .restart local v2    # "endIndex$iv":I
    .restart local v5    # "subLen$iv":I
    :cond_4
    const/4 v3, 0x0

    .line 433
    .local v3, "$i$a$-require-_ByteStringKt$commonSubstring$3$iv":I
    nop

    .end local v3    # "$i$a$-require-_ByteStringKt$commonSubstring$3$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "endIndex < beginIndex"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 429
    .end local v5    # "subLen$iv":I
    :cond_5
    const/4 v3, 0x0

    .line 430
    .local v3, "$i$a$-require-_ByteStringKt$commonSubstring$2$iv":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endIndex > length("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "$i$a$-require-_ByteStringKt$commonSubstring$2$iv":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 429
    :cond_6
    const/4 v3, 0x0

    .line 428
    .local v3, "$i$a$-require-_ByteStringKt$commonSubstring$1$iv":I
    nop

    .end local v3    # "$i$a$-require-_ByteStringKt$commonSubstring$1$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "beginIndex < 0"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .locals 9

    .line 112
    move-object v0, p0

    .local v0, "$this$commonToAsciiLowercase$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 381
    .local v1, "$i$f$commonToAsciiLowercase":I
    const/4 v2, 0x0

    .line 382
    .local v2, "i$iv":I
    :goto_0
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 383
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    aget-byte v3, v3, v2

    .line 384
    .local v3, "c$iv":B
    const/16 v4, 0x41

    int-to-byte v4, v4

    if-lt v3, v4, :cond_4

    const/16 v5, 0x5a

    int-to-byte v5, v5

    if-le v3, v5, :cond_0

    goto :goto_3

    .line 390
    :cond_0
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v6

    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    const-string v7, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    .local v6, "lowercase$iv":[B
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "i$iv":I
    .local v7, "i$iv":I
    add-int/lit8 v8, v3, 0x20

    int-to-byte v8, v8

    aput-byte v8, v6, v2

    .line 392
    :goto_1
    array-length v2, v6

    if-ge v7, v2, :cond_3

    .line 393
    aget-byte v3, v6, v7

    .line 394
    if-lt v3, v4, :cond_2

    if-le v3, v5, :cond_1

    goto :goto_2

    .line 398
    :cond_1
    add-int/lit8 v2, v3, 0x20

    int-to-byte v2, v2

    aput-byte v2, v6, v7

    .line 399
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 395
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 396
    goto :goto_1

    .line 401
    :cond_3
    new-instance v2, Lokio/ByteString;

    invoke-direct {v2, v6}, Lokio/ByteString;-><init>([B)V

    move-object v0, v2

    goto :goto_4

    .line 385
    .end local v6    # "lowercase$iv":[B
    .end local v7    # "i$iv":I
    .restart local v2    # "i$iv":I
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 386
    goto :goto_0

    .line 403
    .end local v3    # "c$iv":B
    :cond_5
    nop

    .line 112
    .end local v0    # "$this$commonToAsciiLowercase$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonToAsciiLowercase":I
    .end local v2    # "i$iv":I
    :goto_4
    return-object v0
.end method

.method public toAsciiUppercase()Lokio/ByteString;
    .locals 9

    .line 114
    move-object v0, p0

    .local v0, "$this$commonToAsciiUppercase$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 404
    .local v1, "$i$f$commonToAsciiUppercase":I
    const/4 v2, 0x0

    .line 405
    .local v2, "i$iv":I
    :goto_0
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 406
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    aget-byte v3, v3, v2

    .line 407
    .local v3, "c$iv":B
    const/16 v4, 0x61

    int-to-byte v4, v4

    if-lt v3, v4, :cond_4

    const/16 v5, 0x7a

    int-to-byte v5, v5

    if-le v3, v5, :cond_0

    goto :goto_3

    .line 413
    :cond_0
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v6

    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    const-string v7, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    .local v6, "lowercase$iv":[B
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "i$iv":I
    .local v7, "i$iv":I
    add-int/lit8 v8, v3, -0x20

    int-to-byte v8, v8

    aput-byte v8, v6, v2

    .line 415
    :goto_1
    array-length v2, v6

    if-ge v7, v2, :cond_3

    .line 416
    aget-byte v3, v6, v7

    .line 417
    if-lt v3, v4, :cond_2

    if-le v3, v5, :cond_1

    goto :goto_2

    .line 421
    :cond_1
    add-int/lit8 v2, v3, -0x20

    int-to-byte v2, v2

    aput-byte v2, v6, v7

    .line 422
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 418
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 419
    goto :goto_1

    .line 424
    :cond_3
    new-instance v2, Lokio/ByteString;

    invoke-direct {v2, v6}, Lokio/ByteString;-><init>([B)V

    move-object v0, v2

    goto :goto_4

    .line 408
    .end local v6    # "lowercase$iv":[B
    .end local v7    # "i$iv":I
    .restart local v2    # "i$iv":I
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 409
    goto :goto_0

    .line 426
    .end local v3    # "c$iv":B
    :cond_5
    nop

    .line 114
    .end local v0    # "$this$commonToAsciiUppercase$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonToAsciiUppercase":I
    .end local v2    # "i$iv":I
    :goto_4
    return-object v0
.end method

.method public toByteArray()[B
    .locals 4

    .line 130
    move-object v0, p0

    .local v0, "$this$commonToByteArray$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 441
    .local v1, "$i$f$commonToByteArray":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string v3, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .end local v0    # "$this$commonToByteArray$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonToByteArray":I
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 22

    .line 193
    move-object/from16 v0, p0

    .local v0, "$this$commonToString$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 495
    .local v1, "$i$f$commonToString":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    const-string v2, "[size=0]"

    goto/16 :goto_6

    .line 497
    :cond_1
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    const/16 v5, 0x40

    invoke-static {v2, v5}, Lokio/internal/_ByteStringKt;->access$codePointIndexToCharIndex([BI)I

    move-result v2

    .line 498
    .local v2, "i$iv":I
    const/4 v6, -0x1

    const-string/jumbo v7, "\u2026]"

    const/16 v8, 0x5d

    const-string v9, "[size="

    if-ne v2, v6, :cond_8

    .line 499
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v6

    array-length v6, v6

    if-gt v6, v5, :cond_2

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[hex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 502
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    .local v6, "beginIndex$iv$iv":I
    const/16 v8, 0x40

    .local v8, "endIndex$iv$iv":I
    move-object v9, v0

    .local v9, "$this$commonSubstring$iv$iv":Lokio/ByteString;
    const/4 v10, 0x0

    .line 503
    .local v10, "$i$f$commonSubstring":I
    invoke-static {v9, v8}, Lokio/_UtilKt;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result v11

    .line 504
    .local v11, "endIndex$iv$iv":I
    nop

    .line 506
    invoke-virtual {v9}, Lokio/ByteString;->getData$okio()[B

    move-result-object v12

    array-length v12, v12

    if-gt v11, v12, :cond_3

    move v12, v3

    goto :goto_1

    :cond_3
    move v12, v4

    :goto_1
    if-eqz v12, :cond_7

    .line 508
    sub-int v12, v11, v6

    .line 509
    .local v12, "subLen$iv$iv":I
    if-ltz v12, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    if-eqz v3, :cond_6

    .line 511
    invoke-virtual {v9}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    array-length v3, v3

    if-ne v11, v3, :cond_5

    .line 512
    goto :goto_3

    .line 514
    :cond_5
    new-instance v3, Lokio/ByteString;

    invoke-virtual {v9}, Lokio/ByteString;->getData$okio()[B

    move-result-object v4

    invoke-static {v4, v6, v11}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lokio/ByteString;-><init>([B)V

    move-object v9, v3

    .line 502
    .end local v6    # "beginIndex$iv$iv":I
    .end local v8    # "endIndex$iv$iv":I
    .end local v9    # "$this$commonSubstring$iv$iv":Lokio/ByteString;
    .end local v10    # "$i$f$commonSubstring":I
    .end local v11    # "endIndex$iv$iv":I
    .end local v12    # "subLen$iv$iv":I
    :goto_3
    invoke-virtual {v9}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 499
    :goto_4
    move-object v2, v3

    goto/16 :goto_6

    .line 505
    .restart local v6    # "beginIndex$iv$iv":I
    .restart local v8    # "endIndex$iv$iv":I
    .restart local v9    # "$this$commonSubstring$iv$iv":Lokio/ByteString;
    .restart local v10    # "$i$f$commonSubstring":I
    .restart local v11    # "endIndex$iv$iv":I
    .restart local v12    # "subLen$iv$iv":I
    :cond_6
    const/4 v3, 0x0

    .line 509
    .local v3, "$i$a$-require-_ByteStringKt$commonSubstring$3$iv$iv":I
    nop

    .end local v3    # "$i$a$-require-_ByteStringKt$commonSubstring$3$iv$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "endIndex < beginIndex"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 505
    .end local v12    # "subLen$iv$iv":I
    :cond_7
    const/4 v3, 0x0

    .line 506
    .local v3, "$i$a$-require-_ByteStringKt$commonSubstring$2$iv$iv":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endIndex > length("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Lokio/ByteString;->getData$okio()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "$i$a$-require-_ByteStringKt$commonSubstring$2$iv$iv":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 515
    .end local v6    # "beginIndex$iv$iv":I
    .end local v8    # "endIndex$iv$iv":I
    .end local v9    # "$this$commonSubstring$iv$iv":Lokio/ByteString;
    .end local v10    # "$i$f$commonSubstring":I
    .end local v11    # "endIndex$iv$iv":I
    :cond_8
    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    .line 516
    .local v3, "text$iv":Ljava/lang/String;
    if-eqz v3, :cond_a

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v4, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    const-string v11, "\\"

    const-string v12, "\\\\"

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 518
    const-string v17, "\n"

    const-string v18, "\\n"

    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 519
    const-string v11, "\r"

    const-string v12, "\\r"

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 516
    nop

    .line 520
    .local v4, "safeText$iv":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_9

    .line 521
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " text="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 523
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[text="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 520
    :goto_5
    move-object v2, v5

    .line 193
    .end local v0    # "$this$commonToString$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonToString":I
    .end local v2    # "i$iv":I
    .end local v3    # "text$iv":Ljava/lang/String;
    .end local v4    # "safeText$iv":Ljava/lang/String;
    :goto_6
    return-object v2

    .line 516
    .restart local v0    # "$this$commonToString$iv":Lokio/ByteString;
    .restart local v1    # "$i$f$commonToString":I
    .restart local v2    # "i$iv":I
    .restart local v3    # "text$iv":Ljava/lang/String;
    :cond_a
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public utf8()Ljava/lang/String;
    .locals 4

    .line 66
    move-object v0, p0

    .local v0, "$this$commonUtf8$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 364
    .local v1, "$i$f$commonUtf8":I
    invoke-virtual {v0}, Lokio/ByteString;->getUtf8$okio()Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "result$iv":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 367
    invoke-virtual {v0}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v3

    invoke-static {v3}, Lokio/_JvmPlatformKt;->toUtf8String([B)Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-virtual {v0, v2}, Lokio/ByteString;->setUtf8$okio(Ljava/lang/String;)V

    .line 370
    :cond_0
    nop

    .line 66
    .end local v0    # "$this$commonUtf8$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonUtf8":I
    .end local v2    # "result$iv":Ljava/lang/String;
    return-object v2
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 141
    return-void
.end method

.method public write$okio(Lokio/Buffer;II)V
    .locals 1
    .param p1, "buffer"    # Lokio/Buffer;
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-static {p0, p1, p2, p3}, Lokio/internal/_ByteStringKt;->commonWrite(Lokio/ByteString;Lokio/Buffer;II)V

    return-void
.end method
