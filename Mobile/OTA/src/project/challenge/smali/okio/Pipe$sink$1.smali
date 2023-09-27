.class public final Lokio/Pipe$sink$1;
.super Ljava/lang/Object;
.source "Pipe.kt"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Pipe;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n+ 2 -JvmPlatform.kt\nokio/_JvmPlatformKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Pipe.kt\nokio/Pipe\n+ 5 Timeout.kt\nokio/Timeout\n*L\n1#1,250:1\n27#2:251\n27#2:281\n27#2:310\n1#3:252\n210#4:253\n211#4:280\n210#4:282\n211#4:309\n210#4:311\n211#4:338\n186#5,26:254\n186#5,26:283\n186#5,26:312\n*S KotlinDebug\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n*L\n54#1:251\n85#1:281\n104#1:310\n80#1:253\n80#1:280\n99#1:282\n99#1:309\n117#1:311\n117#1:338\n80#1:254,26\n99#1:283,26\n117#1:312,26\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "okio/Pipe$sink$1",
        "Lokio/Sink;",
        "timeout",
        "Lokio/Timeout;",
        "close",
        "",
        "flush",
        "write",
        "source",
        "Lokio/Buffer;",
        "byteCount",
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
.field final synthetic this$0:Lokio/Pipe;

.field private final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokio/Pipe;)V
    .locals 1
    .param p1, "$receiver"    # Lokio/Pipe;

    iput-object p1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    iput-object v0, p0, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    .line 48
    return-void
.end method


# virtual methods
.method public close()V
    .locals 15

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "delegate":Ljava/lang/Object;
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v1

    .local v1, "lock$iv":Ljava/lang/Object;
    iget-object v2, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    const/4 v3, 0x0

    .line 310
    .local v3, "$i$f$synchronized":I
    monitor-enter v1

    const/4 v4, 0x0

    .line 105
    .local v4, "$i$a$-synchronized-Pipe$sink$1$close$1":I
    :try_start_0
    invoke-virtual {v2}, Lokio/Pipe;->getSinkClosed$okio()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v5, :cond_0

    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    .end local v4    # "$i$a$-synchronized-Pipe$sink$1$close$1":I
    monitor-exit v1

    return-void

    .line 107
    .restart local v1    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    .restart local v4    # "$i$a$-synchronized-Pipe$sink$1$close$1":I
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    move-result-object v5

    if-nez v5, :cond_3

    .line 112
    invoke-virtual {v2}, Lokio/Pipe;->getSourceClosed$okio()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v5, "source is closed"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "delegate":Ljava/lang/Object;
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    throw v2

    .line 113
    .restart local v0    # "delegate":Ljava/lang/Object;
    .restart local v1    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    :cond_2
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lokio/Pipe;->setSinkClosed$okio(Z)V

    .line 114
    invoke-virtual {v2}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 115
    goto :goto_1

    .line 107
    :cond_3
    move-object v2, v5

    .local v2, "it":Lokio/Sink;
    const/4 v5, 0x0

    .line 108
    .local v5, "$i$a$-let-Pipe$sink$1$close$1$1":I
    move-object v0, v2

    .line 109
    nop

    .line 115
    .end local v2    # "it":Lokio/Sink;
    .end local v4    # "$i$a$-synchronized-Pipe$sink$1$close$1":I
    .end local v5    # "$i$a$-let-Pipe$sink$1$close$1$1":I
    :goto_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v1

    .line 310
    nop

    .line 117
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    if-nez v0, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .local v1, "this_$iv":Lokio/Pipe;
    move-object v2, v0

    .local v2, "$this$forward$iv":Lokio/Sink;
    const/4 v3, 0x0

    .line 311
    .local v3, "$i$f$forward":I
    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v4

    .local v4, "this_$iv$iv":Lokio/Timeout;
    invoke-virtual {v1}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v5

    invoke-interface {v5}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v5

    .local v5, "other$iv$iv":Lokio/Timeout;
    const/4 v6, 0x0

    .line 312
    .local v6, "$i$f$intersectWith":I
    invoke-virtual {v4}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v7

    .line 313
    .local v7, "originalTimeout$iv$iv":J
    sget-object v9, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v5}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v10

    invoke-virtual {v4}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v12

    invoke-virtual {v9, v10, v11, v12, v13}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v9, v10, v11}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 315
    invoke-virtual {v4}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 316
    invoke-virtual {v4}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v9

    .line 317
    .local v9, "originalDeadline$iv$iv":J
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 318
    invoke-virtual {v4}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v11

    invoke-virtual {v5}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 320
    :cond_5
    nop

    .line 321
    const/4 v11, 0x0

    .line 311
    .local v11, "$i$a$-intersectWith-Pipe$forward$1$iv":I
    move-object v12, v2

    .local v12, "$this$close_u24lambda_u2d10":Lokio/Sink;
    const/4 v13, 0x0

    .line 117
    .local v13, "$i$a$-forward-Pipe$sink$1$close$2":I
    :try_start_2
    invoke-interface {v12}, Lokio/Sink;->close()V

    .end local v11    # "$i$a$-intersectWith-Pipe$forward$1$iv":I
    .end local v12    # "$this$close_u24lambda_u2d10":Lokio/Sink;
    .end local v13    # "$i$a$-forward-Pipe$sink$1$close$2":I
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 323
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v11}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 324
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 325
    invoke-virtual {v4, v9, v10}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 321
    :cond_6
    goto :goto_2

    :catchall_0
    move-exception v11

    .line 323
    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v12}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 324
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 325
    invoke-virtual {v4, v9, v10}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_7
    throw v11

    .line 329
    .end local v9    # "originalDeadline$iv$iv":J
    :cond_8
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 330
    invoke-virtual {v5}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 332
    :cond_9
    nop

    .line 333
    const/4 v9, 0x0

    .line 311
    .local v9, "$i$a$-intersectWith-Pipe$forward$1$iv":I
    move-object v10, v2

    .local v10, "$this$close_u24lambda_u2d10":Lokio/Sink;
    const/4 v11, 0x0

    .line 117
    .local v11, "$i$a$-forward-Pipe$sink$1$close$2":I
    :try_start_3
    invoke-interface {v10}, Lokio/Sink;->close()V

    .end local v9    # "$i$a$-intersectWith-Pipe$forward$1$iv":I
    .end local v10    # "$this$close_u24lambda_u2d10":Lokio/Sink;
    .end local v11    # "$i$a$-forward-Pipe$sink$1$close$2":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 335
    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v9}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 336
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 337
    invoke-virtual {v4}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 333
    :cond_a
    nop

    .line 338
    .end local v4    # "this_$iv$iv":Lokio/Timeout;
    .end local v5    # "other$iv$iv":Lokio/Timeout;
    .end local v6    # "$i$f$intersectWith":I
    .end local v7    # "originalTimeout$iv$iv":J
    :goto_2
    nop

    .line 118
    .end local v1    # "this_$iv":Lokio/Pipe;
    .end local v2    # "$this$forward$iv":Lokio/Sink;
    .end local v3    # "$i$f$forward":I
    :goto_3
    return-void

    .line 333
    .restart local v1    # "this_$iv":Lokio/Pipe;
    .restart local v2    # "$this$forward$iv":Lokio/Sink;
    .restart local v3    # "$i$f$forward":I
    .restart local v4    # "this_$iv$iv":Lokio/Timeout;
    .restart local v5    # "other$iv$iv":Lokio/Timeout;
    .restart local v6    # "$i$f$intersectWith":I
    .restart local v7    # "originalTimeout$iv$iv":J
    :catchall_1
    move-exception v9

    .line 335
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v10}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 336
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 337
    invoke-virtual {v4}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_b
    throw v9

    .line 115
    .end local v2    # "$this$forward$iv":Lokio/Sink;
    .end local v4    # "this_$iv$iv":Lokio/Timeout;
    .end local v5    # "other$iv$iv":Lokio/Timeout;
    .end local v6    # "$i$f$intersectWith":I
    .end local v7    # "originalTimeout$iv$iv":J
    .local v1, "lock$iv":Ljava/lang/Object;
    .local v3, "$i$f$synchronized":I
    :catchall_2
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public flush()V
    .locals 15

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "delegate":Ljava/lang/Object;
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v1

    .local v1, "lock$iv":Ljava/lang/Object;
    iget-object v2, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    const/4 v3, 0x0

    .line 281
    .local v3, "$i$f$synchronized":I
    monitor-enter v1

    const/4 v4, 0x0

    .line 86
    .local v4, "$i$a$-synchronized-Pipe$sink$1$flush$1":I
    :try_start_0
    invoke-virtual {v2}, Lokio/Pipe;->getSinkClosed$okio()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_c

    .line 87
    invoke-virtual {v2}, Lokio/Pipe;->getCanceled$okio()Z

    move-result v5

    if-nez v5, :cond_b

    .line 89
    invoke-virtual {v2}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    move-result-object v5

    if-nez v5, :cond_2

    .line 94
    invoke-virtual {v2}, Lokio/Pipe;->getSourceClosed$okio()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-gtz v2, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v5, "source is closed"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "delegate":Ljava/lang/Object;
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    throw v2

    .line 97
    .restart local v0    # "delegate":Ljava/lang/Object;
    .restart local v1    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    :cond_1
    :goto_0
    goto :goto_1

    .line 89
    :cond_2
    move-object v2, v5

    .local v2, "it":Lokio/Sink;
    const/4 v5, 0x0

    .line 90
    .local v5, "$i$a$-let-Pipe$sink$1$flush$1$2":I
    move-object v0, v2

    .line 91
    nop

    .line 97
    .end local v2    # "it":Lokio/Sink;
    .end local v4    # "$i$a$-synchronized-Pipe$sink$1$flush$1":I
    .end local v5    # "$i$a$-let-Pipe$sink$1$flush$1$2":I
    :goto_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v1

    .line 281
    nop

    .line 99
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    if-nez v0, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .local v1, "this_$iv":Lokio/Pipe;
    move-object v2, v0

    .local v2, "$this$forward$iv":Lokio/Sink;
    const/4 v3, 0x0

    .line 282
    .local v3, "$i$f$forward":I
    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v4

    .local v4, "this_$iv$iv":Lokio/Timeout;
    invoke-virtual {v1}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v5

    invoke-interface {v5}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v5

    .local v5, "other$iv$iv":Lokio/Timeout;
    const/4 v6, 0x0

    .line 283
    .local v6, "$i$f$intersectWith":I
    invoke-virtual {v4}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v7

    .line 284
    .local v7, "originalTimeout$iv$iv":J
    sget-object v9, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v5}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v10

    invoke-virtual {v4}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v12

    invoke-virtual {v9, v10, v11, v12, v13}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v9, v10, v11}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 286
    invoke-virtual {v4}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 287
    invoke-virtual {v4}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v9

    .line 288
    .local v9, "originalDeadline$iv$iv":J
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 289
    invoke-virtual {v4}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v11

    invoke-virtual {v5}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 291
    :cond_4
    nop

    .line 292
    const/4 v11, 0x0

    .line 282
    .local v11, "$i$a$-intersectWith-Pipe$forward$1$iv":I
    move-object v12, v2

    .local v12, "$this$flush_u24lambda_u2d7":Lokio/Sink;
    const/4 v13, 0x0

    .line 99
    .local v13, "$i$a$-forward-Pipe$sink$1$flush$2":I
    :try_start_1
    invoke-interface {v12}, Lokio/Sink;->flush()V

    .end local v11    # "$i$a$-intersectWith-Pipe$forward$1$iv":I
    .end local v12    # "$this$flush_u24lambda_u2d7":Lokio/Sink;
    .end local v13    # "$i$a$-forward-Pipe$sink$1$flush$2":I
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v11}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 295
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 296
    invoke-virtual {v4, v9, v10}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 292
    :cond_5
    goto :goto_2

    :catchall_0
    move-exception v11

    .line 294
    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v12}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 295
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 296
    invoke-virtual {v4, v9, v10}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_6
    throw v11

    .line 300
    .end local v9    # "originalDeadline$iv$iv":J
    :cond_7
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 301
    invoke-virtual {v5}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 303
    :cond_8
    nop

    .line 304
    const/4 v9, 0x0

    .line 282
    .local v9, "$i$a$-intersectWith-Pipe$forward$1$iv":I
    move-object v10, v2

    .local v10, "$this$flush_u24lambda_u2d7":Lokio/Sink;
    const/4 v11, 0x0

    .line 99
    .local v11, "$i$a$-forward-Pipe$sink$1$flush$2":I
    :try_start_2
    invoke-interface {v10}, Lokio/Sink;->flush()V

    .end local v9    # "$i$a$-intersectWith-Pipe$forward$1$iv":I
    .end local v10    # "$this$flush_u24lambda_u2d7":Lokio/Sink;
    .end local v11    # "$i$a$-forward-Pipe$sink$1$flush$2":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 306
    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v9}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 307
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 308
    invoke-virtual {v4}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 304
    :cond_9
    nop

    .line 309
    .end local v4    # "this_$iv$iv":Lokio/Timeout;
    .end local v5    # "other$iv$iv":Lokio/Timeout;
    .end local v6    # "$i$f$intersectWith":I
    .end local v7    # "originalTimeout$iv$iv":J
    :goto_2
    nop

    .line 100
    .end local v1    # "this_$iv":Lokio/Pipe;
    .end local v2    # "$this$forward$iv":Lokio/Sink;
    .end local v3    # "$i$f$forward":I
    :goto_3
    return-void

    .line 304
    .restart local v1    # "this_$iv":Lokio/Pipe;
    .restart local v2    # "$this$forward$iv":Lokio/Sink;
    .restart local v3    # "$i$f$forward":I
    .restart local v4    # "this_$iv$iv":Lokio/Timeout;
    .restart local v5    # "other$iv$iv":Lokio/Timeout;
    .restart local v6    # "$i$f$intersectWith":I
    .restart local v7    # "originalTimeout$iv$iv":J
    :catchall_1
    move-exception v9

    .line 306
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v10}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 307
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 308
    invoke-virtual {v4}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_a
    throw v9

    .line 87
    .end local v2    # "$this$forward$iv":Lokio/Sink;
    .end local v5    # "other$iv$iv":Lokio/Timeout;
    .end local v6    # "$i$f$intersectWith":I
    .end local v7    # "originalTimeout$iv$iv":J
    .local v1, "lock$iv":Ljava/lang/Object;
    .local v3, "$i$f$synchronized":I
    .local v4, "$i$a$-synchronized-Pipe$sink$1$flush$1":I
    :cond_b
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    const-string v5, "canceled"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "delegate":Ljava/lang/Object;
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    throw v2

    .line 252
    .restart local v0    # "delegate":Ljava/lang/Object;
    .restart local v1    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    :cond_c
    const/4 v2, 0x0

    .line 86
    .local v2, "$i$a$-check-Pipe$sink$1$flush$1$1":I
    const-string v5, "closed"

    .end local v2    # "$i$a$-check-Pipe$sink$1$flush$1$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    .end local v0    # "delegate":Ljava/lang/Object;
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 97
    .end local v4    # "$i$a$-synchronized-Pipe$sink$1$flush$1":I
    .restart local v0    # "delegate":Ljava/lang/Object;
    .restart local v1    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    :catchall_2
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 120
    iget-object v0, p0, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 18
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v0, "source"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    nop

    .line 53
    const/4 v3, 0x0

    .line 54
    .local v3, "delegate":Ljava/lang/Object;
    iget-object v0, v1, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v4

    .local v4, "lock$iv":Ljava/lang/Object;
    iget-object v0, v1, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    const/4 v5, 0x0

    .line 251
    .local v5, "$i$f$synchronized":I
    monitor-enter v4

    const/4 v6, 0x0

    .line 55
    .local v6, "$i$a$-synchronized-Pipe$sink$1$write$1":I
    :try_start_0
    invoke-virtual {v0}, Lokio/Pipe;->getSinkClosed$okio()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_e

    .line 56
    invoke-virtual {v0}, Lokio/Pipe;->getCanceled$okio()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v7, :cond_d

    move-wide/from16 v7, p2

    .line 58
    .local v7, "byteCount":J
    :goto_0
    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_4

    .line 59
    :try_start_1
    invoke-virtual {v0}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    move-result-object v11

    if-nez v11, :cond_3

    .line 64
    invoke-virtual {v0}, Lokio/Pipe;->getSourceClosed$okio()Z

    move-result v11

    if-nez v11, :cond_2

    .line 66
    invoke-virtual {v0}, Lokio/Pipe;->getMaxBufferSize$okio()J

    move-result-wide v11

    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v13

    invoke-virtual {v13}, Lokio/Buffer;->size()J

    move-result-wide v13

    sub-long/2addr v11, v13

    .line 67
    .local v11, "bufferSpaceAvailable":J
    cmp-long v9, v11, v9

    if-nez v9, :cond_1

    .line 68
    iget-object v9, v1, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v0}, Lokio/Pipe;->getCanceled$okio()Z

    move-result v9

    if-nez v9, :cond_0

    .line 70
    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v9, "canceled"

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "delegate":Ljava/lang/Object;
    .end local v4    # "lock$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$synchronized":I
    .end local v7    # "byteCount":J
    .end local p1    # "source":Lokio/Buffer;
    .end local p2    # "byteCount":J
    throw v0

    .line 73
    .restart local v3    # "delegate":Ljava/lang/Object;
    .restart local v4    # "lock$iv":Ljava/lang/Object;
    .restart local v5    # "$i$f$synchronized":I
    .restart local v7    # "byteCount":J
    .restart local p1    # "source":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :cond_1
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 74
    .local v9, "bytesToWrite":J
    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v13

    invoke-virtual {v13, v2, v9, v10}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 75
    sub-long/2addr v7, v9

    .line 76
    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .end local v9    # "bytesToWrite":J
    .end local v11    # "bufferSpaceAvailable":J
    goto :goto_0

    .line 64
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v9, "source is closed"

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "delegate":Ljava/lang/Object;
    .end local v4    # "lock$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$synchronized":I
    .end local v7    # "byteCount":J
    .end local p1    # "source":Lokio/Buffer;
    .end local p2    # "byteCount":J
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .restart local v3    # "delegate":Ljava/lang/Object;
    .restart local v4    # "lock$iv":Ljava/lang/Object;
    .restart local v5    # "$i$f$synchronized":I
    .restart local v7    # "byteCount":J
    .restart local p1    # "source":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :cond_3
    move-object v0, v11

    .local v0, "it":Lokio/Sink;
    const/4 v9, 0x0

    .line 60
    .local v9, "$i$a$-let-Pipe$sink$1$write$1$2":I
    move-object v3, v0

    .line 61
    goto :goto_1

    .line 78
    .end local v0    # "it":Lokio/Sink;
    .end local v6    # "$i$a$-synchronized-Pipe$sink$1$write$1":I
    .end local v9    # "$i$a$-let-Pipe$sink$1$write$1$2":I
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .restart local v6    # "$i$a$-synchronized-Pipe$sink$1$write$1":I
    :cond_4
    nop

    .end local v6    # "$i$a$-synchronized-Pipe$sink$1$write$1":I
    :goto_1
    :try_start_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    monitor-exit v4

    .line 251
    nop

    .line 80
    .end local v4    # "lock$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$synchronized":I
    if-nez v3, :cond_5

    move-object/from16 v16, v3

    goto/16 :goto_3

    :cond_5
    iget-object v4, v1, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .local v4, "this_$iv":Lokio/Pipe;
    move-object v0, v3

    .local v0, "$this$forward$iv":Lokio/Sink;
    move-object v5, v0

    .end local v0    # "$this$forward$iv":Lokio/Sink;
    .local v5, "$this$forward$iv":Lokio/Sink;
    const/4 v6, 0x0

    .line 253
    .local v6, "$i$f$forward":I
    invoke-interface {v5}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v9

    .local v9, "this_$iv$iv":Lokio/Timeout;
    invoke-virtual {v4}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    .local v0, "other$iv$iv":Lokio/Timeout;
    move-object v10, v0

    .end local v0    # "other$iv$iv":Lokio/Timeout;
    .local v10, "other$iv$iv":Lokio/Timeout;
    const/4 v11, 0x0

    .line 254
    .local v11, "$i$f$intersectWith":I
    invoke-virtual {v9}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v12

    .line 255
    .local v12, "originalTimeout$iv$iv":J
    sget-object v0, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v10}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v14

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "delegate":Ljava/lang/Object;
    .end local v4    # "this_$iv":Lokio/Pipe;
    .local v16, "delegate":Ljava/lang/Object;
    .local v17, "this_$iv":Lokio/Pipe;
    invoke-virtual {v9}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v3

    invoke-virtual {v0, v14, v15, v3, v4}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v3, v4, v0}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 257
    invoke-virtual {v9}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 258
    invoke-virtual {v9}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v3

    .line 259
    .local v3, "originalDeadline$iv$iv":J
    invoke-virtual {v10}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 260
    invoke-virtual {v9}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v14

    invoke-virtual {v10}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 262
    :cond_6
    nop

    .line 263
    const/4 v0, 0x0

    .line 253
    .local v0, "$i$a$-intersectWith-Pipe$forward$1$iv":I
    move-object v1, v5

    .local v1, "$this$write_u24lambda_u2d3":Lokio/Sink;
    const/4 v14, 0x0

    .line 80
    .local v14, "$i$a$-forward-Pipe$sink$1$write$2":I
    :try_start_3
    invoke-interface {v1, v2, v7, v8}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .end local v0    # "$i$a$-intersectWith-Pipe$forward$1$iv":I
    .end local v1    # "$this$write_u24lambda_u2d3":Lokio/Sink;
    .end local v14    # "$i$a$-forward-Pipe$sink$1$write$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 265
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v12, v13, v0}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 266
    invoke-virtual {v10}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 267
    invoke-virtual {v9, v3, v4}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 263
    :cond_7
    goto :goto_2

    :catchall_1
    move-exception v0

    .line 265
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v12, v13, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 266
    invoke-virtual {v10}, Lokio/Timeout;->hasDeadline()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 267
    invoke-virtual {v9, v3, v4}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_8
    throw v0

    .line 271
    .end local v3    # "originalDeadline$iv$iv":J
    :cond_9
    invoke-virtual {v10}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 272
    invoke-virtual {v10}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 274
    :cond_a
    nop

    .line 275
    const/4 v0, 0x0

    .line 253
    .restart local v0    # "$i$a$-intersectWith-Pipe$forward$1$iv":I
    move-object v1, v5

    .restart local v1    # "$this$write_u24lambda_u2d3":Lokio/Sink;
    const/4 v3, 0x0

    .line 80
    .local v3, "$i$a$-forward-Pipe$sink$1$write$2":I
    :try_start_4
    invoke-interface {v1, v2, v7, v8}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .end local v0    # "$i$a$-intersectWith-Pipe$forward$1$iv":I
    .end local v1    # "$this$write_u24lambda_u2d3":Lokio/Sink;
    .end local v3    # "$i$a$-forward-Pipe$sink$1$write$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 277
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v12, v13, v0}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 278
    invoke-virtual {v10}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 279
    invoke-virtual {v9}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 275
    :cond_b
    nop

    .line 280
    .end local v9    # "this_$iv$iv":Lokio/Timeout;
    .end local v10    # "other$iv$iv":Lokio/Timeout;
    .end local v11    # "$i$f$intersectWith":I
    .end local v12    # "originalTimeout$iv$iv":J
    :goto_2
    nop

    .line 81
    .end local v5    # "$this$forward$iv":Lokio/Sink;
    .end local v6    # "$i$f$forward":I
    .end local v17    # "this_$iv":Lokio/Pipe;
    :goto_3
    return-void

    .line 275
    .restart local v5    # "$this$forward$iv":Lokio/Sink;
    .restart local v6    # "$i$f$forward":I
    .restart local v9    # "this_$iv$iv":Lokio/Timeout;
    .restart local v10    # "other$iv$iv":Lokio/Timeout;
    .restart local v11    # "$i$f$intersectWith":I
    .restart local v12    # "originalTimeout$iv$iv":J
    .restart local v17    # "this_$iv":Lokio/Pipe;
    :catchall_2
    move-exception v0

    .line 277
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v12, v13, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 278
    invoke-virtual {v10}, Lokio/Timeout;->hasDeadline()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 279
    invoke-virtual {v9}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_c
    throw v0

    .line 78
    .end local v6    # "$i$f$forward":I
    .end local v9    # "this_$iv$iv":Lokio/Timeout;
    .end local v10    # "other$iv$iv":Lokio/Timeout;
    .end local v11    # "$i$f$intersectWith":I
    .end local v12    # "originalTimeout$iv$iv":J
    .end local v16    # "delegate":Ljava/lang/Object;
    .end local v17    # "this_$iv":Lokio/Pipe;
    .local v3, "delegate":Ljava/lang/Object;
    .local v4, "lock$iv":Ljava/lang/Object;
    .local v5, "$i$f$synchronized":I
    :catchall_3
    move-exception v0

    move-object/from16 v16, v3

    .end local v3    # "delegate":Ljava/lang/Object;
    .restart local v16    # "delegate":Ljava/lang/Object;
    goto :goto_4

    .line 56
    .end local v7    # "byteCount":J
    .end local v16    # "delegate":Ljava/lang/Object;
    .restart local v3    # "delegate":Ljava/lang/Object;
    .local v6, "$i$a$-synchronized-Pipe$sink$1$write$1":I
    :cond_d
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "delegate":Ljava/lang/Object;
    .end local v4    # "lock$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$synchronized":I
    .end local p1    # "source":Lokio/Buffer;
    .end local p2    # "byteCount":J
    throw v0

    .line 252
    .restart local v3    # "delegate":Ljava/lang/Object;
    .restart local v4    # "lock$iv":Ljava/lang/Object;
    .restart local v5    # "$i$f$synchronized":I
    .restart local p1    # "source":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :cond_e
    const/4 v0, 0x0

    .line 55
    .local v0, "$i$a$-check-Pipe$sink$1$write$1$1":I
    const-string v1, "closed"

    .end local v0    # "$i$a$-check-Pipe$sink$1$write$1$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .end local v3    # "delegate":Ljava/lang/Object;
    .end local v4    # "lock$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$synchronized":I
    .end local p1    # "source":Lokio/Buffer;
    .end local p2    # "byteCount":J
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 78
    .end local v6    # "$i$a$-synchronized-Pipe$sink$1$write$1":I
    .restart local v3    # "delegate":Ljava/lang/Object;
    .restart local v4    # "lock$iv":Ljava/lang/Object;
    .restart local v5    # "$i$f$synchronized":I
    .restart local p1    # "source":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :catchall_4
    move-exception v0

    move-wide/from16 v7, p2

    .restart local v7    # "byteCount":J
    :goto_4
    monitor-exit v4

    throw v0
.end method
