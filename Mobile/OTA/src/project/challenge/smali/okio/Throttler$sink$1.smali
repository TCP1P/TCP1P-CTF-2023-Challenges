.class public final Lokio/Throttler$sink$1;
.super Lokio/ForwardingSink;
.source "Throttler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Throttler;->sink(Lokio/Sink;)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "okio/Throttler$sink$1",
        "Lokio/ForwardingSink;",
        "write",
        "",
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
.field final synthetic $sink:Lokio/Sink;

.field final synthetic this$0:Lokio/Throttler;


# direct methods
.method constructor <init>(Lokio/Throttler;Lokio/Sink;)V
    .locals 0
    .param p1, "$receiver"    # Lokio/Throttler;
    .param p2, "$sink"    # Lokio/Sink;

    iput-object p1, p0, Lokio/Throttler$sink$1;->this$0:Lokio/Throttler;

    iput-object p2, p0, Lokio/Throttler$sink$1;->$sink:Lokio/Sink;

    .line 151
    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 4
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    nop

    .line 155
    move-wide v0, p2

    .line 156
    .local v0, "remaining":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 157
    :try_start_0
    iget-object v2, p0, Lokio/Throttler$sink$1;->this$0:Lokio/Throttler;

    invoke-virtual {v2, v0, v1}, Lokio/Throttler;->take$okio(J)J

    move-result-wide v2

    .line 158
    .local v2, "toWrite":J
    invoke-super {p0, p1, v2, v3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    sub-long/2addr v0, v2

    .end local v2    # "toWrite":J
    goto :goto_0

    .line 161
    .end local v0    # "remaining":J
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 163
    new-instance v1, Ljava/io/InterruptedIOException;

    const-string v2, "interrupted"

    invoke-direct {v1, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
