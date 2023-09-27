.class public final synthetic Lintechfest/cc/ota/MainActivity$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lintechfest/cc/ota/MainActivity$2;

.field public final synthetic f$1:Landroid/app/ProgressDialog;


# direct methods
.method public synthetic constructor <init>(Lintechfest/cc/ota/MainActivity$2;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lintechfest/cc/ota/MainActivity$2$$ExternalSyntheticLambda1;->f$0:Lintechfest/cc/ota/MainActivity$2;

    iput-object p2, p0, Lintechfest/cc/ota/MainActivity$2$$ExternalSyntheticLambda1;->f$1:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lintechfest/cc/ota/MainActivity$2$$ExternalSyntheticLambda1;->f$0:Lintechfest/cc/ota/MainActivity$2;

    iget-object v1, p0, Lintechfest/cc/ota/MainActivity$2$$ExternalSyntheticLambda1;->f$1:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lintechfest/cc/ota/MainActivity$2;->lambda$onResponse$2$intechfest-cc-ota-MainActivity$2(Landroid/app/ProgressDialog;)V

    return-void
.end method
