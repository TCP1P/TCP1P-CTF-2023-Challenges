.class public Lintechfest/cc/ota/FuncRandomString;
.super Ljava/lang/Object;
.source "FuncRandomString.java"


# static fields
.field public static NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    const-string v0, "Random String"

    sput-object v0, Lintechfest/cc/ota/FuncRandomString;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute()V
    .locals 11

    .line 9
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 10
    .local v0, "random":Ljava/util/Random;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 12
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 13
    .local v1, "length":I
    const-string v3, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 14
    .local v3, "charset":[C
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 16
    array-length v6, v3

    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget-char v6, v3, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 20
    .end local v5    # "i":I
    :cond_0
    :try_start_0
    const-string v5, "intechfest.cc.ota.MainActivity"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 21
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "showDialog"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v2

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "Random String"

    aput-object v8, v7, v10

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v2, 0x0

    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    nop

    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 22
    :catch_0
    move-exception v2

    .line 23
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
