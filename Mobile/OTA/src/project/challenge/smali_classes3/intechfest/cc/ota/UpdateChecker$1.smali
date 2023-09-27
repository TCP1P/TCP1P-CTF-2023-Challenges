.class Lintechfest/cc/ota/UpdateChecker$1;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lintechfest/cc/ota/UpdateChecker;->downloadFile(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lintechfest/cc/ota/UpdateChecker;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lintechfest/cc/ota/UpdateChecker;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lintechfest/cc/ota/UpdateChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lintechfest/cc/ota/UpdateChecker$1;->this$0:Lintechfest/cc/ota/UpdateChecker;

    iput-object p2, p0, Lintechfest/cc/ota/UpdateChecker$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lintechfest/cc/ota/UpdateChecker$1;->val$filename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailure$0$intechfest-cc-ota-UpdateChecker$1()V
    .locals 1

    .line 52
    iget-object v0, p0, Lintechfest/cc/ota/UpdateChecker$1;->this$0:Lintechfest/cc/ota/UpdateChecker;

    invoke-static {v0}, Lintechfest/cc/ota/UpdateChecker;->access$400(Lintechfest/cc/ota/UpdateChecker;)V

    return-void
.end method

.method synthetic lambda$onResponse$1$intechfest-cc-ota-UpdateChecker$1()V
    .locals 1

    .line 59
    iget-object v0, p0, Lintechfest/cc/ota/UpdateChecker$1;->this$0:Lintechfest/cc/ota/UpdateChecker;

    invoke-static {v0}, Lintechfest/cc/ota/UpdateChecker;->access$400(Lintechfest/cc/ota/UpdateChecker;)V

    return-void
.end method

.method synthetic lambda$onResponse$2$intechfest-cc-ota-UpdateChecker$1(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 74
    iget-object v0, p0, Lintechfest/cc/ota/UpdateChecker$1;->this$0:Lintechfest/cc/ota/UpdateChecker;

    invoke-static {v0, p1}, Lintechfest/cc/ota/UpdateChecker;->access$300(Lintechfest/cc/ota/UpdateChecker;I)V

    return-void
.end method

.method synthetic lambda$onResponse$3$intechfest-cc-ota-UpdateChecker$1()V
    .locals 1

    .line 82
    iget-object v0, p0, Lintechfest/cc/ota/UpdateChecker$1;->this$0:Lintechfest/cc/ota/UpdateChecker;

    invoke-static {v0}, Lintechfest/cc/ota/UpdateChecker;->access$200(Lintechfest/cc/ota/UpdateChecker;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 51
    iget-object v0, p0, Lintechfest/cc/ota/UpdateChecker$1;->this$0:Lintechfest/cc/ota/UpdateChecker;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lintechfest/cc/ota/UpdateChecker;->access$002(Lintechfest/cc/ota/UpdateChecker;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lintechfest/cc/ota/UpdateChecker$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lintechfest/cc/ota/UpdateChecker$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lintechfest/cc/ota/UpdateChecker$1$$ExternalSyntheticLambda0;-><init>(Lintechfest/cc/ota/UpdateChecker$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 13
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lintechfest/cc/ota/UpdateChecker$1;->this$0:Lintechfest/cc/ota/UpdateChecker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lintechfest/cc/ota/UpdateChecker;->access$002(Lintechfest/cc/ota/UpdateChecker;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lintechfest/cc/ota/UpdateChecker$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lintechfest/cc/ota/UpdateChecker$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lintechfest/cc/ota/UpdateChecker$1$$ExternalSyntheticLambda1;-><init>(Lintechfest/cc/ota/UpdateChecker$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void

    .line 63
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    long-to-int v0, v0

    .line 64
    .local v0, "fileLength":I
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 65
    .local v1, "input":Ljava/io/InputStream;
    iget-object v2, p0, Lintechfest/cc/ota/UpdateChecker$1;->this$0:Lintechfest/cc/ota/UpdateChecker;

    invoke-static {v2}, Lintechfest/cc/ota/UpdateChecker;->access$100(Lintechfest/cc/ota/UpdateChecker;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lintechfest/cc/ota/UpdateChecker$1;->val$filename:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 67
    .local v2, "output":Ljava/io/FileOutputStream;
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 68
    .local v3, "data":[B
    const-wide/16 v5, 0x0

    .line 71
    .local v5, "total":J
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "count":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_1

    .line 72
    int-to-long v9, v8

    add-long/2addr v5, v9

    .line 73
    const-wide/16 v9, 0x64

    mul-long/2addr v9, v5

    int-to-long v11, v0

    div-long/2addr v9, v11

    long-to-int v7, v9

    .line 74
    .local v7, "progress":I
    iget-object v9, p0, Lintechfest/cc/ota/UpdateChecker$1;->val$handler:Landroid/os/Handler;

    new-instance v10, Lintechfest/cc/ota/UpdateChecker$1$$ExternalSyntheticLambda2;

    invoke-direct {v10, p0, v7}, Lintechfest/cc/ota/UpdateChecker$1$$ExternalSyntheticLambda2;-><init>(Lintechfest/cc/ota/UpdateChecker$1;I)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    invoke-virtual {v2, v3, v4, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 76
    .end local v7    # "progress":I
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 79
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 80
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 82
    iget-object v4, p0, Lintechfest/cc/ota/UpdateChecker$1;->val$handler:Landroid/os/Handler;

    new-instance v7, Lintechfest/cc/ota/UpdateChecker$1$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0}, Lintechfest/cc/ota/UpdateChecker$1$$ExternalSyntheticLambda3;-><init>(Lintechfest/cc/ota/UpdateChecker$1;)V

    invoke-virtual {v4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    return-void
.end method
