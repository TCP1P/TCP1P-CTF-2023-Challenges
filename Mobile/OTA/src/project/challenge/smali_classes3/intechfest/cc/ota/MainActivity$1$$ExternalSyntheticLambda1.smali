.class public final synthetic Lintechfest/cc/ota/MainActivity$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/ProgressDialog;

.field public final synthetic f$1:Lokhttp3/Response;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ProgressDialog;Lokhttp3/Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lintechfest/cc/ota/MainActivity$1$$ExternalSyntheticLambda1;->f$0:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lintechfest/cc/ota/MainActivity$1$$ExternalSyntheticLambda1;->f$1:Lokhttp3/Response;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lintechfest/cc/ota/MainActivity$1$$ExternalSyntheticLambda1;->f$0:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lintechfest/cc/ota/MainActivity$1$$ExternalSyntheticLambda1;->f$1:Lokhttp3/Response;

    invoke-static {v0, v1}, Lintechfest/cc/ota/MainActivity$1;->lambda$onResponse$1(Landroid/app/ProgressDialog;Lokhttp3/Response;)V

    return-void
.end method
