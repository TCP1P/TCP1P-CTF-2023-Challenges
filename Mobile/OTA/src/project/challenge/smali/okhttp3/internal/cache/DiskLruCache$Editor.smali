.class public final Lokhttp3/internal/cache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0018\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0013\u0008\u0000\u0012\n\u0010\u0002\u001a\u00060\u0003R\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u000fJ\r\u0010\u0011\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008\u0012J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0002\u001a\u00060\u0003R\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lokhttp3/internal/cache/DiskLruCache$Editor;",
        "",
        "entry",
        "Lokhttp3/internal/cache/DiskLruCache$Entry;",
        "Lokhttp3/internal/cache/DiskLruCache;",
        "(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V",
        "done",
        "",
        "getEntry$okhttp",
        "()Lokhttp3/internal/cache/DiskLruCache$Entry;",
        "written",
        "",
        "getWritten$okhttp",
        "()[Z",
        "abort",
        "",
        "commit",
        "detach",
        "detach$okhttp",
        "newSink",
        "Lokio/Sink;",
        "index",
        "",
        "newSource",
        "Lokio/Source;",
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


# instance fields
.field private done:Z

.field private final entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;

.field private final written:[Z


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V
    .locals 1
    .param p1, "this$0"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p2, "entry"    # Lokhttp3/internal/cache/DiskLruCache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/cache/DiskLruCache$Entry;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 825
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 826
    invoke-virtual {p2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getReadable$okhttp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache;->getValueCount$okhttp()I

    move-result v0

    new-array v0, v0, [Z

    :goto_0
    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    .line 825
    return-void
.end method


# virtual methods
.method public final abort()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 913
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    const/4 v1, 0x0

    .line 914
    .local v1, "$i$a$-synchronized-DiskLruCache$Editor$abort$1":I
    :try_start_0
    iget-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 915
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->getEntry$okhttp()Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCurrentEditor$okhttp()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 916
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit$okhttp(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    .line 918
    :cond_0
    iput-boolean v3, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    .line 919
    nop

    .end local v1    # "$i$a$-synchronized-DiskLruCache$Editor$abort$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    monitor-exit v0

    .line 920
    return-void

    .line 914
    .restart local v1    # "$i$a$-synchronized-DiskLruCache$Editor$abort$1":I
    :cond_1
    :try_start_1
    const-string v2, "Check failed."

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 913
    .end local v1    # "$i$a$-synchronized-DiskLruCache$Editor$abort$1":I
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final commit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 898
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    const/4 v1, 0x0

    .line 899
    .local v1, "$i$a$-synchronized-DiskLruCache$Editor$commit$1":I
    :try_start_0
    iget-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 900
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->getEntry$okhttp()Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCurrentEditor$okhttp()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 901
    invoke-virtual {v0, p0, v3}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit$okhttp(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    .line 903
    :cond_0
    iput-boolean v3, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    .line 904
    nop

    .end local v1    # "$i$a$-synchronized-DiskLruCache$Editor$commit$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    monitor-exit v0

    .line 905
    return-void

    .line 899
    .restart local v1    # "$i$a$-synchronized-DiskLruCache$Editor$commit$1":I
    :cond_1
    :try_start_1
    const-string v2, "Check failed."

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 898
    .end local v1    # "$i$a$-synchronized-DiskLruCache$Editor$commit$1":I
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final detach$okhttp()V
    .locals 2

    .line 836
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCurrentEditor$okhttp()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache;->access$getCivilizedFileSystem$p(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit$okhttp(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    goto :goto_0

    .line 840
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->setZombie$okhttp(Z)V

    .line 843
    :cond_1
    :goto_0
    return-void
.end method

.method public final getEntry$okhttp()Lokhttp3/internal/cache/DiskLruCache$Entry;
    .locals 1

    .line 825
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    return-object v0
.end method

.method public final getWritten$okhttp()[Z
    .locals 1

    .line 826
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method

.method public final newSink(I)Lokio/Sink;
    .locals 6
    .param p1, "index"    # I

    .line 869
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    const/4 v1, 0x0

    .line 870
    .local v1, "$i$a$-synchronized-DiskLruCache$Editor$newSink$1":I
    :try_start_0
    iget-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 871
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->getEntry$okhttp()Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCurrentEditor$okhttp()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 872
    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "$i$a$-synchronized-DiskLruCache$Editor$newSink$1":I
    monitor-exit v0

    return-object v2

    .line 874
    .restart local v1    # "$i$a$-synchronized-DiskLruCache$Editor$newSink$1":I
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->getEntry$okhttp()Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getReadable$okhttp()Z

    move-result v2

    if-nez v2, :cond_1

    .line 875
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->getWritten$okhttp()[Z

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aput-boolean v3, v2, p1

    .line 877
    :cond_1
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->getEntry$okhttp()Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getDirtyFiles$okhttp()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v2, "dirtyFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 879
    .local v3, "sink":Lokio/Sink;
    nop

    .line 880
    :try_start_2
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->getFileSystem$okhttp()Lokhttp3/internal/io/FileSystem;

    move-result-object v4

    invoke-interface {v4, v2}, Lokhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v4

    .line 884
    :try_start_3
    new-instance v4, Lokhttp3/internal/cache/FaultHidingSink;

    new-instance v5, Lokhttp3/internal/cache/DiskLruCache$Editor$newSink$1$1;

    invoke-direct {v5, v0, p0}, Lokhttp3/internal/cache/DiskLruCache$Editor$newSink$1$1;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-direct {v4, v3, v5}, Lokhttp3/internal/cache/FaultHidingSink;-><init>(Lokio/Sink;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lokio/Sink;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v1    # "$i$a$-synchronized-DiskLruCache$Editor$newSink$1":I
    .end local v2    # "dirtyFile":Ljava/io/File;
    .end local v3    # "sink":Lokio/Sink;
    monitor-exit v0

    return-object v4

    .line 881
    .restart local v1    # "$i$a$-synchronized-DiskLruCache$Editor$newSink$1":I
    .restart local v2    # "dirtyFile":Ljava/io/File;
    .restart local v3    # "sink":Lokio/Sink;
    :catch_0
    move-exception v4

    .line 882
    .local v4, "_":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v1    # "$i$a$-synchronized-DiskLruCache$Editor$newSink$1":I
    .end local v2    # "dirtyFile":Ljava/io/File;
    .end local v3    # "sink":Lokio/Sink;
    .end local v4    # "_":Ljava/io/FileNotFoundException;
    monitor-exit v0

    return-object v5

    .line 870
    .restart local v1    # "$i$a$-synchronized-DiskLruCache$Editor$newSink$1":I
    :cond_2
    :try_start_5
    const-string v2, "Check failed."

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "index":I
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 884
    .end local v1    # "$i$a$-synchronized-DiskLruCache$Editor$newSink$1":I
    .restart local p1    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final newSource(I)Lokio/Source;
    .locals 5
    .param p1, "index"    # I

    .line 850
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    const/4 v1, 0x0

    .line 851
    .local v1, "$i$a$-synchronized-DiskLruCache$Editor$newSource$1":I
    :try_start_0
    iget-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 852
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->getEntry$okhttp()Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getReadable$okhttp()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->getEntry$okhttp()Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCurrentEditor$okhttp()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->getEntry$okhttp()Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getZombie$okhttp()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_1

    .line 855
    :cond_0
    nop

    .line 856
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->getFileSystem$okhttp()Lokhttp3/internal/io/FileSystem;

    move-result-object v2

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->getEntry$okhttp()Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCleanFiles$okhttp()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-interface {v2, v4}, Lokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 857
    :catch_0
    move-exception v2

    .line 858
    .local v2, "_":Ljava/io/FileNotFoundException;
    :try_start_2
    move-object v4, v3

    check-cast v4, Lokio/Source;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "_":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 855
    .end local v1    # "$i$a$-synchronized-DiskLruCache$Editor$newSource$1":I
    monitor-exit v0

    return-object v3

    .line 853
    .restart local v1    # "$i$a$-synchronized-DiskLruCache$Editor$newSource$1":I
    :cond_1
    :goto_1
    nop

    .end local v1    # "$i$a$-synchronized-DiskLruCache$Editor$newSource$1":I
    monitor-exit v0

    return-object v3

    .line 851
    .restart local v1    # "$i$a$-synchronized-DiskLruCache$Editor$newSource$1":I
    :cond_2
    :try_start_3
    const-string v2, "Check failed."

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "index":I
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 855
    .end local v1    # "$i$a$-synchronized-DiskLruCache$Editor$newSource$1":I
    .restart local p1    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
