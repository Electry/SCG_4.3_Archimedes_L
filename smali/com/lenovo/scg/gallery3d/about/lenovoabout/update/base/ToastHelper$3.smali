.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper$3;
.super Ljava/lang/Object;
.source "ToastHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->longToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

.field final synthetic val$toast:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper$3;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper$3;->val$toast:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper$3;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper$3;->val$toast:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    return-void
.end method
