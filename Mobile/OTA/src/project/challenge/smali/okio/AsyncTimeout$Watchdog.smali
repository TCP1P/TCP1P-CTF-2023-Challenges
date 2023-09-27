.class final Lokio/AsyncTimeout$Watchdog;
.super Ljava/lang/Thread;
.source "AsyncTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Watchdog"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$Watchdog\n+ 2 -JvmPlatform.kt\nokio/_JvmPlatformKt\n*L\n1#1,329:1\n27#2:330\n*S KotlinDebug\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$Watchdog\n*L\n182#1:330\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0000\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lokio/AsyncTimeout$Watchdog;",
        "Ljava/lang/Thread;",
        "()V",
        "run",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 173
    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 174
    nop

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/AsyncTimeout$Watchdog;->setDaemon(Z)V

    .line 176
    nop

    .line 173
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 179
    nop

    :goto_0
    nop

    .line 180
    nop

    .line 181
    const/4 v0, 0x0

    .local v0, "timedOut":Ljava/lang/Object;
    :try_start_0
    const-class v1, Lokio/AsyncTimeout;

    .line 182
    nop

    .local v1, "lock$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 330
    .local v2, "$i$f$synchronized":I
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    .line 183
    .local v3, "$i$a$-synchronized-AsyncTimeout$Watchdog$run$1":I
    :try_start_1
    sget-object v4, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    invoke-virtual {v4}, Lokio/AsyncTimeout$Companion;->awaitTimeout$okio()Lokio/AsyncTimeout;

    move-result-object v4

    move-object v0, v4

    .line 187
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v4

    if-ne v0, v4, :cond_0

    .line 188
    sget-object v4, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    const/4 v4, 0x0

    invoke-static {v4}, Lokio/AsyncTimeout;->access$setHead$cp(Lokio/AsyncTimeout;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    nop

    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    .end local v3    # "$i$a$-synchronized-AsyncTimeout$Watchdog$run$1":I
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 191
    .restart local v1    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    .restart local v3    # "$i$a$-synchronized-AsyncTimeout$Watchdog$run$1":I
    :cond_0
    nop

    .end local v3    # "$i$a$-synchronized-AsyncTimeout$Watchdog$run$1":I
    :try_start_3
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1

    .line 330
    nop

    .line 194
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lokio/AsyncTimeout;->timedOut()V

    .end local v0    # "timedOut":Ljava/lang/Object;
    goto :goto_0

    .line 191
    .restart local v0    # "timedOut":Ljava/lang/Object;
    .restart local v1    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    :catchall_0
    move-exception v3

    monitor-exit v1

    throw v3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 195
    .end local v0    # "timedOut":Ljava/lang/Object;
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    :catch_0
    move-exception v0

    goto :goto_0
.end method
