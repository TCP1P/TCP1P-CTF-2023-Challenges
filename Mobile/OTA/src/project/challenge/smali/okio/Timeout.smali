.class public Lokio/Timeout;
.super Ljava/lang/Object;
.source "Timeout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Timeout$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timeout.kt\nokio/Timeout\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,234:1\n1#2:235\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0008\u001a\u00020\u0000H\u0016J\u0008\u0010\t\u001a\u00020\u0000H\u0016J\u0016\u0010\n\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\rJ\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J-\u0010\u000e\u001a\u0002H\u000f\"\u0004\u0008\u0000\u0010\u000f2\u0006\u0010\u0010\u001a\u00020\u00002\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u0012H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016J\u000e\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u001a"
    }
    d2 = {
        "Lokio/Timeout;",
        "",
        "()V",
        "deadlineNanoTime",
        "",
        "hasDeadline",
        "",
        "timeoutNanos",
        "clearDeadline",
        "clearTimeout",
        "deadline",
        "duration",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "intersectWith",
        "T",
        "other",
        "block",
        "Lkotlin/Function0;",
        "(Lokio/Timeout;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "throwIfReached",
        "",
        "timeout",
        "waitUntilNotified",
        "monitor",
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
.field public static final Companion:Lokio/Timeout$Companion;

.field public static final NONE:Lokio/Timeout;


# instance fields
.field private deadlineNanoTime:J

.field private hasDeadline:Z

.field private timeoutNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokio/Timeout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/Timeout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    .line 218
    new-instance v0, Lokio/Timeout$Companion$NONE$1;

    invoke-direct {v0}, Lokio/Timeout$Companion$NONE$1;-><init>()V

    check-cast v0, Lokio/Timeout;

    sput-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDeadline()Lokio/Timeout;
    .locals 1

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    .line 86
    return-object p0
.end method

.method public clearTimeout()Lokio/Timeout;
    .locals 2

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokio/Timeout;->timeoutNanos:J

    .line 80
    return-object p0
.end method

.method public final deadline(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 4
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    const-string/jumbo v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 74
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v0

    return-object v0

    .line 235
    :cond_1
    const/4 v0, 0x0

    .line 73
    .local v0, "$i$a$-require-Timeout$deadline$1":I
    const-string v1, "duration <= 0: "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Timeout$deadline$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public deadlineNanoTime()J
    .locals 2

    .line 56
    iget-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    if-eqz v0, :cond_0

    .line 57
    iget-wide v0, p0, Lokio/Timeout;->deadlineNanoTime:J

    return-wide v0

    .line 235
    :cond_0
    const/4 v0, 0x0

    .line 56
    .local v0, "$i$a$-check-Timeout$deadlineNanoTime$1":I
    nop

    .end local v0    # "$i$a$-check-Timeout$deadlineNanoTime$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No deadline"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public deadlineNanoTime(J)Lokio/Timeout;
    .locals 1
    .param p1, "deadlineNanoTime"    # J

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    .line 67
    iput-wide p1, p0, Lokio/Timeout;->deadlineNanoTime:J

    .line 68
    return-object p0
.end method

.method public hasDeadline()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    return v0
.end method

.method public final intersectWith(Lokio/Timeout;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 11
    .param p1, "other"    # Lokio/Timeout;
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokio/Timeout;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 186
    .local v0, "$i$f$intersectWith":I
    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v1

    .line 187
    .local v1, "originalTimeout":J
    sget-object v3, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {p1}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v4

    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v3, v4, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 189
    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 190
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    .line 191
    .local v5, "originalDeadline":J
    invoke-virtual {p1}, Lokio/Timeout;->hasDeadline()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v7

    invoke-virtual {p1}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 194
    :cond_0
    nop

    .line 195
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 197
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 198
    invoke-virtual {p1}, Lokio/Timeout;->hasDeadline()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 199
    invoke-virtual {p0, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 195
    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 197
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 198
    invoke-virtual {p1}, Lokio/Timeout;->hasDeadline()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 199
    invoke-virtual {p0, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3

    .line 203
    .end local v5    # "originalDeadline":J
    :cond_3
    invoke-virtual {p1}, Lokio/Timeout;->hasDeadline()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 204
    invoke-virtual {p1}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 206
    :cond_4
    nop

    .line 207
    :try_start_1
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 209
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 210
    invoke-virtual {p1}, Lokio/Timeout;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 211
    invoke-virtual {p0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 207
    return-object v3

    :catchall_1
    move-exception v3

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 209
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 210
    invoke-virtual {p1}, Lokio/Timeout;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 211
    invoke-virtual {p0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method public throwIfReached()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    iget-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lokio/Timeout;->deadlineNanoTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "deadline reached"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    const-string/jumbo v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lokio/Timeout;->timeoutNanos:J

    .line 41
    return-object p0

    .line 235
    :cond_1
    const/4 v0, 0x0

    .line 39
    .local v0, "$i$a$-require-Timeout$timeout$1":I
    const-string/jumbo v1, "timeout < 0: "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Timeout$timeout$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public timeoutNanos()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lokio/Timeout;->timeoutNanos:J

    return-wide v0
.end method

.method public final waitUntilNotified(Ljava/lang/Object;)V
    .locals 13
    .param p1, "monitor"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    const-string v0, "monitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    nop

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    .line 145
    .local v0, "hasDeadline":Z
    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v1

    .line 147
    .local v1, "timeoutNanos":J
    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    .line 149
    return-void

    .line 153
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 154
    .local v5, "start":J
    if-eqz v0, :cond_1

    cmp-long v7, v1, v3

    if-eqz v7, :cond_1

    .line 155
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 156
    .local v7, "deadlineNanos":J
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .end local v7    # "deadlineNanos":J
    goto :goto_0

    .line 157
    :cond_1
    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v7

    sub-long v9, v7, v5

    goto :goto_0

    .line 160
    :cond_2
    move-wide v9, v1

    .line 154
    :goto_0
    move-wide v7, v9

    .line 164
    .local v7, "waitNanos":J
    const-wide/16 v9, 0x0

    .line 165
    .local v9, "elapsedNanos":J
    cmp-long v3, v7, v3

    if-lez v3, :cond_3

    .line 166
    const-wide/32 v3, 0xf4240

    div-long v11, v7, v3

    .line 167
    .local v11, "waitMillis":J
    mul-long/2addr v3, v11

    sub-long v3, v7, v3

    long-to-int v3, v3

    invoke-virtual {p1, v11, v12, v3}, Ljava/lang/Object;->wait(JI)V

    .line 168
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v9, v3, v5

    .line 172
    .end local v11    # "waitMillis":J
    :cond_3
    cmp-long v3, v9, v7

    if-gez v3, :cond_4

    .line 179
    .end local v0    # "hasDeadline":Z
    .end local v1    # "timeoutNanos":J
    .end local v5    # "start":J
    .end local v7    # "waitNanos":J
    .end local v9    # "elapsedNanos":J
    return-void

    .line 173
    .restart local v0    # "hasDeadline":Z
    .restart local v1    # "timeoutNanos":J
    .restart local v5    # "start":J
    .restart local v7    # "waitNanos":J
    .restart local v9    # "elapsedNanos":J
    :cond_4
    new-instance v3, Ljava/io/InterruptedIOException;

    const-string/jumbo v4, "timeout"

    invoke-direct {v3, v4}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "monitor":Ljava/lang/Object;
    throw v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v0    # "hasDeadline":Z
    .end local v1    # "timeoutNanos":J
    .end local v5    # "start":J
    .end local v7    # "waitNanos":J
    .end local v9    # "elapsedNanos":J
    .restart local p1    # "monitor":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 177
    new-instance v1, Ljava/io/InterruptedIOException;

    const-string v2, "interrupted"

    invoke-direct {v1, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
