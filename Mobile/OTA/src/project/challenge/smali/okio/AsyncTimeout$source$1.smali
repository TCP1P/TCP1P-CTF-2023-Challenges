.class public final Lokio/AsyncTimeout$source$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$source$1\n+ 2 AsyncTimeout.kt\nokio/AsyncTimeout\n*L\n1#1,329:1\n143#2,11:330\n143#2,11:341\n*S KotlinDebug\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$source$1\n*L\n125#1:330,11\n129#1:341,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0005H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "okio/AsyncTimeout$source$1",
        "Lokio/Source;",
        "close",
        "",
        "read",
        "",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "timeout",
        "Lokio/AsyncTimeout;",
        "toString",
        "",
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
.field final synthetic $source:Lokio/Source;

.field final synthetic this$0:Lokio/AsyncTimeout;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/Source;)V
    .locals 0
    .param p1, "$receiver"    # Lokio/AsyncTimeout;
    .param p2, "$source"    # Lokio/Source;

    iput-object p1, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    iput-object p2, p0, Lokio/AsyncTimeout$source$1;->$source:Lokio/Source;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    .line 129
    iget-object v0, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    .local v0, "this_$iv":Lokio/AsyncTimeout;
    iget-object v1, p0, Lokio/AsyncTimeout$source$1;->$source:Lokio/Source;

    const/4 v2, 0x0

    .line 341
    .local v2, "$i$f$withTimeout":I
    const/4 v3, 0x0

    .line 342
    .local v3, "throwOnTimeout$iv":Z
    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 343
    nop

    .line 344
    const/4 v4, 0x0

    .line 129
    .local v4, "$i$a$-withTimeout-AsyncTimeout$source$1$close$1":I
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v1}, Lokio/Source;->close()V

    .end local v4    # "$i$a$-withTimeout-AsyncTimeout$source$1$close$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    .local v1, "result$iv":Ljava/lang/Object;
    const/4 v3, 0x1

    .line 346
    nop

    .line 350
    .end local v1    # "result$iv":Ljava/lang/Object;
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v4

    .line 351
    .local v4, "timedOut$iv":Z
    if-nez v4, :cond_0

    .line 346
    .end local v4    # "timedOut$iv":Z
    .restart local v1    # "result$iv":Ljava/lang/Object;
    nop

    .line 130
    .end local v0    # "this_$iv":Lokio/AsyncTimeout;
    .end local v1    # "result$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$withTimeout":I
    .end local v3    # "throwOnTimeout$iv":Z
    return-void

    .line 351
    .restart local v0    # "this_$iv":Lokio/AsyncTimeout;
    .restart local v2    # "$i$f$withTimeout":I
    .restart local v3    # "throwOnTimeout$iv":Z
    .restart local v4    # "timedOut$iv":Z
    :cond_0
    invoke-virtual {v0, v5}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 348
    .end local v4    # "timedOut$iv":Z
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 347
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e$iv":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    .end local v0    # "this_$iv":Lokio/AsyncTimeout;
    .end local v2    # "$i$f$withTimeout":I
    .end local v3    # "throwOnTimeout$iv":Z
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    .end local v1    # "e$iv":Ljava/io/IOException;
    .restart local v0    # "this_$iv":Lokio/AsyncTimeout;
    .restart local v2    # "$i$f$withTimeout":I
    .restart local v3    # "throwOnTimeout$iv":Z
    :goto_1
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v4

    .line 351
    .restart local v4    # "timedOut$iv":Z
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v0, v5}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .end local v4    # "timedOut$iv":Z
    :cond_2
    throw v1
.end method

.method public read(Lokio/Buffer;J)J
    .locals 8
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    .local v0, "this_$iv":Lokio/AsyncTimeout;
    iget-object v1, p0, Lokio/AsyncTimeout$source$1;->$source:Lokio/Source;

    const/4 v2, 0x0

    .line 330
    .local v2, "$i$f$withTimeout":I
    const/4 v3, 0x0

    .line 331
    .local v3, "throwOnTimeout$iv":Z
    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 332
    nop

    .line 333
    const/4 v4, 0x0

    .line 125
    .local v4, "$i$a$-withTimeout-AsyncTimeout$source$1$read$1":I
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    .end local v4    # "$i$a$-withTimeout-AsyncTimeout$source$1$read$1":I
    .local v6, "result$iv":J
    const/4 v1, 0x1

    .line 335
    .end local v3    # "throwOnTimeout$iv":Z
    .local v1, "throwOnTimeout$iv":Z
    nop

    .line 339
    .end local v6    # "result$iv":J
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v3

    .line 340
    .local v3, "timedOut$iv":Z
    if-nez v3, :cond_0

    move-wide v3, v6

    .line 335
    .local v3, "result$iv":J
    nop

    .line 125
    .end local v0    # "this_$iv":Lokio/AsyncTimeout;
    .end local v1    # "throwOnTimeout$iv":Z
    .end local v2    # "$i$f$withTimeout":I
    .end local v3    # "result$iv":J
    return-wide v6

    .line 340
    .restart local v0    # "this_$iv":Lokio/AsyncTimeout;
    .restart local v1    # "throwOnTimeout$iv":Z
    .restart local v2    # "$i$f$withTimeout":I
    .local v3, "timedOut$iv":Z
    :cond_0
    invoke-virtual {v0, v5}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 337
    .end local v1    # "throwOnTimeout$iv":Z
    .local v3, "throwOnTimeout$iv":Z
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 336
    :catch_0
    move-exception v1

    .line 337
    .local v1, "e$iv":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    .end local v0    # "this_$iv":Lokio/AsyncTimeout;
    .end local v2    # "$i$f$withTimeout":I
    .end local v3    # "throwOnTimeout$iv":Z
    .end local p1    # "sink":Lokio/Buffer;
    .end local p2    # "byteCount":J
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    .end local v1    # "e$iv":Ljava/io/IOException;
    .restart local v0    # "this_$iv":Lokio/AsyncTimeout;
    .restart local v2    # "$i$f$withTimeout":I
    .restart local v3    # "throwOnTimeout$iv":Z
    .restart local p1    # "sink":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :goto_1
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v4

    .line 340
    .local v4, "timedOut$iv":Z
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v0, v5}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .end local v4    # "timedOut$iv":Z
    :cond_2
    throw v1
.end method

.method public timeout()Lokio/AsyncTimeout;
    .locals 1

    .line 132
    iget-object v0, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public bridge synthetic timeout()Lokio/Timeout;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lokio/AsyncTimeout$source$1;->timeout()Lokio/AsyncTimeout;

    move-result-object v0

    check-cast v0, Lokio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/AsyncTimeout$source$1;->$source:Lokio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
