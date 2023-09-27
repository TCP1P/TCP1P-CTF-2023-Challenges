.class Lintechfest/cc/ota/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lintechfest/cc/ota/MainActivity;->downloadUpdate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lintechfest/cc/ota/MainActivity;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$pDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lintechfest/cc/ota/MainActivity;Landroid/os/Handler;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lintechfest/cc/ota/MainActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lintechfest/cc/ota/MainActivity$2;->this$0:Lintechfest/cc/ota/MainActivity;

    iput-object p2, p0, Lintechfest/cc/ota/MainActivity$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lintechfest/cc/ota/MainActivity$2;->val$pDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onFailure$0(Landroid/app/ProgressDialog;Ljava/io/IOException;)V
    .locals 2
    .param p0, "pDialog"    # Landroid/app/ProgressDialog;
    .param p1, "e"    # Ljava/io/IOException;

    .line 199
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 200
    const-string v0, "Error"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lintechfest/cc/ota/MainActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method static synthetic lambda$onResponse$1(Landroid/app/ProgressDialog;Lokhttp3/Response;)V
    .locals 2
    .param p0, "pDialog"    # Landroid/app/ProgressDialog;
    .param p1, "response"    # Lokhttp3/Response;

    .line 208
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 209
    const-string v0, "Error"

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lintechfest/cc/ota/MainActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method static synthetic lambda$onResponse$3(Landroid/app/ProgressDialog;Ljava/io/IOException;)V
    .locals 2
    .param p0, "pDialog"    # Landroid/app/ProgressDialog;
    .param p1, "e"    # Ljava/io/IOException;

    .line 236
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 237
    const-string v0, "Error"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lintechfest/cc/ota/MainActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method


# virtual methods
.method synthetic lambda$onResponse$2$intechfest-cc-ota-MainActivity$2(Landroid/app/ProgressDialog;)V
    .locals 1
    .param p1, "pDialog"    # Landroid/app/ProgressDialog;

    .line 231
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 232
    iget-object v0, p0, Lintechfest/cc/ota/MainActivity$2;->this$0:Lintechfest/cc/ota/MainActivity;

    invoke-virtual {v0}, Lintechfest/cc/ota/MainActivity;->loadDex()V

    .line 233
    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 198
    iget-object v0, p0, Lintechfest/cc/ota/MainActivity$2;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lintechfest/cc/ota/MainActivity$2;->val$pDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lintechfest/cc/ota/MainActivity$2$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, p2}, Lintechfest/cc/ota/MainActivity$2$$ExternalSyntheticLambda3;-><init>(Landroid/app/ProgressDialog;Ljava/io/IOException;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 11
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lintechfest/cc/ota/MainActivity$2;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lintechfest/cc/ota/MainActivity$2;->val$pDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lintechfest/cc/ota/MainActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p2}, Lintechfest/cc/ota/MainActivity$2$$ExternalSyntheticLambda0;-><init>(Landroid/app/ProgressDialog;Lokhttp3/Response;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 212
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    .line 213
    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 216
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lintechfest/cc/ota/MainActivity$2;->this$0:Lintechfest/cc/ota/MainActivity;

    invoke-virtual {v3}, Lintechfest/cc/ota/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "update.dex"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 219
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 221
    .local v3, "buffer":[B
    const/4 v4, 0x0

    .line 222
    .local v4, "total":I
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "len":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 223
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 224
    add-int/2addr v4, v6

    .line 225
    iget-object v5, p0, Lintechfest/cc/ota/MainActivity$2;->val$pDialog:Landroid/app/ProgressDialog;

    mul-int/lit8 v7, v4, 0x64

    int-to-long v7, v7

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v9

    div-long/2addr v7, v9

    long-to-int v7, v7

    invoke-virtual {v5, v7}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 230
    iget-object v5, p0, Lintechfest/cc/ota/MainActivity$2;->val$handler:Landroid/os/Handler;

    iget-object v7, p0, Lintechfest/cc/ota/MainActivity$2;->val$pDialog:Landroid/app/ProgressDialog;

    new-instance v8, Lintechfest/cc/ota/MainActivity$2$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v7}, Lintechfest/cc/ota/MainActivity$2$$ExternalSyntheticLambda1;-><init>(Lintechfest/cc/ota/MainActivity$2;Landroid/app/ProgressDialog;)V

    invoke-virtual {v5, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    nop

    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "buffer":[B
    .end local v4    # "total":I
    .end local v6    # "len":I
    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_3

    .line 234
    :catch_0
    move-exception v2

    .line 235
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v3, p0, Lintechfest/cc/ota/MainActivity$2;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Lintechfest/cc/ota/MainActivity$2;->val$pDialog:Landroid/app/ProgressDialog;

    new-instance v5, Lintechfest/cc/ota/MainActivity$2$$ExternalSyntheticLambda2;

    invoke-direct {v5, v4, v2}, Lintechfest/cc/ota/MainActivity$2$$ExternalSyntheticLambda2;-><init>(Landroid/app/ProgressDialog;Ljava/io/IOException;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    nop

    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_2

    .line 241
    :goto_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 245
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    :cond_2
    :goto_2
    return-void

    .line 240
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    :goto_3
    if-eqz v1, :cond_3

    .line 241
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 243
    :cond_3
    throw v2
.end method
