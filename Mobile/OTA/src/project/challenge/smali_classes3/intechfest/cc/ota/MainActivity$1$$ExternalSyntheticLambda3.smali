.class public final synthetic Lintechfest/cc/ota/MainActivity$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lintechfest/cc/ota/MainActivity$1;

.field public final synthetic f$1:Landroid/app/ProgressDialog;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lintechfest/cc/ota/MainActivity$1;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lintechfest/cc/ota/MainActivity$1$$ExternalSyntheticLambda3;->f$0:Lintechfest/cc/ota/MainActivity$1;

    iput-object p2, p0, Lintechfest/cc/ota/MainActivity$1$$ExternalSyntheticLambda3;->f$1:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lintechfest/cc/ota/MainActivity$1$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lintechfest/cc/ota/MainActivity$1$$ExternalSyntheticLambda3;->f$0:Lintechfest/cc/ota/MainActivity$1;

    iget-object v1, p0, Lintechfest/cc/ota/MainActivity$1$$ExternalSyntheticLambda3;->f$1:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lintechfest/cc/ota/MainActivity$1$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lintechfest/cc/ota/MainActivity$1;->lambda$onResponse$3$intechfest-cc-ota-MainActivity$1(Landroid/app/ProgressDialog;Ljava/lang/String;)V

    return-void
.end method
