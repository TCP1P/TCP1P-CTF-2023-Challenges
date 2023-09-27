.class public final Lokio/AsyncTimeout$Companion;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$Companion\n+ 2 -JvmPlatform.kt\nokio/_JvmPlatformKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,329:1\n27#2:330\n27#2:332\n1#3:331\n*S KotlinDebug\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$Companion\n*L\n224#1:330\n267#1:332\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000f\u0010\n\u001a\u0004\u0018\u00010\tH\u0000\u00a2\u0006\u0002\u0008\u000bJ\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tH\u0002J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\rH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lokio/AsyncTimeout$Companion;",
        "",
        "()V",
        "IDLE_TIMEOUT_MILLIS",
        "",
        "IDLE_TIMEOUT_NANOS",
        "TIMEOUT_WRITE_SIZE",
        "",
        "head",
        "Lokio/AsyncTimeout;",
        "awaitTimeout",
        "awaitTimeout$okio",
        "cancelScheduledTimeout",
        "",
        "node",
        "scheduleTimeout",
        "",
        "timeoutNanos",
        "hasDeadline",
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

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lokio/AsyncTimeout$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$cancelScheduledTimeout(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;)Z
    .locals 1
    .param p0, "$this"    # Lokio/AsyncTimeout$Companion;
    .param p1, "node"    # Lokio/AsyncTimeout;

    .line 201
    invoke-direct {p0, p1}, Lokio/AsyncTimeout$Companion;->cancelScheduledTimeout(Lokio/AsyncTimeout;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$scheduleTimeout(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;JZ)V
    .locals 0
    .param p0, "$this"    # Lokio/AsyncTimeout$Companion;
    .param p1, "node"    # Lokio/AsyncTimeout;
    .param p2, "timeoutNanos"    # J
    .param p4, "hasDeadline"    # Z

    .line 201
    invoke-direct {p0, p1, p2, p3, p4}, Lokio/AsyncTimeout$Companion;->scheduleTimeout(Lokio/AsyncTimeout;JZ)V

    return-void
.end method

.method private final cancelScheduledTimeout(Lokio/AsyncTimeout;)Z
    .locals 6
    .param p1, "node"    # Lokio/AsyncTimeout;

    const-class v0, Lokio/AsyncTimeout;

    .line 267
    nop

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 332
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 268
    .local v2, "$i$a$-synchronized-AsyncTimeout$Companion$cancelScheduledTimeout$1":I
    :try_start_0
    invoke-static {p1}, Lokio/AsyncTimeout;->access$getInQueue$p(Lokio/AsyncTimeout;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    .end local v2    # "$i$a$-synchronized-AsyncTimeout$Companion$cancelScheduledTimeout$1":I
    monitor-exit v0

    return v4

    .line 269
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .restart local v2    # "$i$a$-synchronized-AsyncTimeout$Companion$cancelScheduledTimeout$1":I
    :cond_0
    :try_start_1
    invoke-static {p1, v4}, Lokio/AsyncTimeout;->access$setInQueue$p(Lokio/AsyncTimeout;Z)V

    .line 272
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v3

    .line 273
    .local v3, "prev":Lokio/AsyncTimeout;
    :goto_0
    if-eqz v3, :cond_2

    .line 274
    invoke-static {v3}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 275
    invoke-static {p1}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v5

    invoke-static {v3, v5}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 276
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    nop

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    .end local v2    # "$i$a$-synchronized-AsyncTimeout$Companion$cancelScheduledTimeout$1":I
    .end local v3    # "prev":Lokio/AsyncTimeout;
    monitor-exit v0

    return v4

    .line 279
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .restart local v2    # "$i$a$-synchronized-AsyncTimeout$Companion$cancelScheduledTimeout$1":I
    .restart local v3    # "prev":Lokio/AsyncTimeout;
    :cond_1
    :try_start_2
    invoke-static {v3}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v5

    goto :goto_0

    .line 283
    :cond_2
    nop

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    .end local v2    # "$i$a$-synchronized-AsyncTimeout$Companion$cancelScheduledTimeout$1":I
    .end local v3    # "prev":Lokio/AsyncTimeout;
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method private final scheduleTimeout(Lokio/AsyncTimeout;JZ)V
    .locals 10
    .param p1, "node"    # Lokio/AsyncTimeout;
    .param p2, "timeoutNanos"    # J
    .param p4, "hasDeadline"    # Z

    const-class v0, Lokio/AsyncTimeout;

    .line 224
    nop

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 330
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 225
    .local v2, "$i$a$-synchronized-AsyncTimeout$Companion$scheduleTimeout$1":I
    :try_start_0
    invoke-static {p1}, Lokio/AsyncTimeout;->access$getInQueue$p(Lokio/AsyncTimeout;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_7

    .line 226
    invoke-static {p1, v4}, Lokio/AsyncTimeout;->access$setInQueue$p(Lokio/AsyncTimeout;Z)V

    .line 229
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v3

    if-nez v3, :cond_0

    .line 230
    sget-object v3, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    new-instance v3, Lokio/AsyncTimeout;

    invoke-direct {v3}, Lokio/AsyncTimeout;-><init>()V

    invoke-static {v3}, Lokio/AsyncTimeout;->access$setHead$cp(Lokio/AsyncTimeout;)V

    .line 231
    new-instance v3, Lokio/AsyncTimeout$Watchdog;

    invoke-direct {v3}, Lokio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v3}, Lokio/AsyncTimeout$Watchdog;->start()V

    .line 234
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 235
    .local v3, "now":J
    const-wide/16 v5, 0x0

    cmp-long v7, p2, v5

    if-eqz v7, :cond_1

    if-eqz p4, :cond_1

    .line 238
    invoke-virtual {p1}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {p2, p3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-static {p1, v5, v6}, Lokio/AsyncTimeout;->access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V

    goto :goto_0

    .line 239
    :cond_1
    cmp-long v5, p2, v5

    if-eqz v5, :cond_2

    .line 240
    add-long v5, v3, p2

    invoke-static {p1, v5, v6}, Lokio/AsyncTimeout;->access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V

    goto :goto_0

    .line 241
    :cond_2
    if-eqz p4, :cond_6

    .line 242
    invoke-virtual {p1}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v5

    invoke-static {p1, v5, v6}, Lokio/AsyncTimeout;->access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V

    .line 248
    :goto_0
    invoke-static {p1, v3, v4}, Lokio/AsyncTimeout;->access$remainingNanos(Lokio/AsyncTimeout;J)J

    move-result-wide v5

    .line 249
    .local v5, "remainingNanos":J
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 250
    .local v7, "prev":Lokio/AsyncTimeout;
    :goto_1
    nop

    .line 251
    invoke-static {v7}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-static {v7}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v8, v3, v4}, Lokio/AsyncTimeout;->access$remainingNanos(Lokio/AsyncTimeout;J)J

    move-result-wide v8

    cmp-long v8, v5, v8

    if-gez v8, :cond_3

    goto :goto_2

    .line 260
    :cond_3
    invoke-static {v7}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v8

    goto :goto_1

    .line 252
    :cond_4
    :goto_2
    invoke-static {v7}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v8

    invoke-static {p1, v8}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 253
    invoke-static {v7, p1}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 254
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v8

    if-ne v7, v8, :cond_5

    const-class v8, Lokio/AsyncTimeout;

    check-cast v8, Ljava/lang/Object;

    .line 256
    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 258
    :cond_5
    nop

    .line 262
    nop

    .end local v2    # "$i$a$-synchronized-AsyncTimeout$Companion$scheduleTimeout$1":I
    .end local v3    # "now":J
    .end local v5    # "remainingNanos":J
    .end local v7    # "prev":Lokio/AsyncTimeout;
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 330
    nop

    .line 263
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 244
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .restart local v2    # "$i$a$-synchronized-AsyncTimeout$Companion$scheduleTimeout$1":I
    .restart local v3    # "now":J
    :cond_6
    :try_start_1
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    .end local p1    # "node":Lokio/AsyncTimeout;
    .end local p2    # "timeoutNanos":J
    .end local p4    # "hasDeadline":Z
    throw v5

    .line 331
    .end local v3    # "now":J
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .restart local p1    # "node":Lokio/AsyncTimeout;
    .restart local p2    # "timeoutNanos":J
    .restart local p4    # "hasDeadline":Z
    :cond_7
    const/4 v3, 0x0

    .line 225
    .local v3, "$i$a$-check-AsyncTimeout$Companion$scheduleTimeout$1$1":I
    const-string v4, "Unbalanced enter/exit"

    .end local v3    # "$i$a$-check-AsyncTimeout$Companion$scheduleTimeout$1$1":I
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    .end local p1    # "node":Lokio/AsyncTimeout;
    .end local p2    # "timeoutNanos":J
    .end local p4    # "hasDeadline":Z
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    .end local v2    # "$i$a$-synchronized-AsyncTimeout$Companion$scheduleTimeout$1":I
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .restart local p1    # "node":Lokio/AsyncTimeout;
    .restart local p2    # "timeoutNanos":J
    .restart local p4    # "hasDeadline":Z
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method


# virtual methods
.method public final awaitTimeout$okio()Lokio/AsyncTimeout;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 297
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v0

    .line 300
    .local v0, "node":Lokio/AsyncTimeout;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 301
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .local v2, "startNanos":J
    const-class v4, Lokio/AsyncTimeout;

    check-cast v4, Ljava/lang/Object;

    .line 302
    invoke-static {}, Lokio/AsyncTimeout;->access$getIDLE_TIMEOUT_MILLIS$cp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 303
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {}, Lokio/AsyncTimeout;->access$getIDLE_TIMEOUT_NANOS$cp()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 304
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v1

    goto :goto_0

    .line 306
    :cond_0
    move-object v4, v1

    check-cast v4, Lokio/AsyncTimeout;

    .line 303
    :goto_0
    return-object v1

    .line 310
    .end local v2    # "startNanos":J
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lokio/AsyncTimeout;->access$remainingNanos(Lokio/AsyncTimeout;J)J

    move-result-wide v2

    .line 313
    .local v2, "waitNanos":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 316
    const-wide/32 v4, 0xf4240

    div-long v6, v2, v4

    .line 317
    .local v6, "waitMillis":J
    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    const-class v4, Lokio/AsyncTimeout;

    check-cast v4, Ljava/lang/Object;

    .line 318
    long-to-int v5, v2

    invoke-virtual {v4, v6, v7, v5}, Ljava/lang/Object;->wait(JI)V

    .line 319
    return-object v1

    .line 323
    .end local v6    # "waitMillis":J
    :cond_2
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v5

    invoke-static {v4, v5}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 324
    invoke-static {v0, v1}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 325
    return-object v0
.end method
