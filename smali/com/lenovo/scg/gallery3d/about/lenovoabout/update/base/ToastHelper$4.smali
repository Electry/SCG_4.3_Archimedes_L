.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper$4;
.super Ljava/lang/Object;
.source "ToastHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->longToast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

.field final synthetic val$toastResId:I


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;I)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper$4;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    iput p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper$4;->val$toastResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper$4;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper$4;->val$toastResId:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 60
    return-void
.end method
