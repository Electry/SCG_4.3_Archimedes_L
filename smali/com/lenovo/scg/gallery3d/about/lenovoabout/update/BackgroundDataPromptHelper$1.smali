.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper$1;
.super Ljava/lang/Object;
.source "BackgroundDataPromptHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;->showPromtDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;

.field final synthetic val$dont_promt_next:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper$1;->val$dont_promt_next:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper$1;->val$dont_promt_next:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->setBackGroundDataDontPromt()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->backgroundDataEnable(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 82
    return-void
.end method
