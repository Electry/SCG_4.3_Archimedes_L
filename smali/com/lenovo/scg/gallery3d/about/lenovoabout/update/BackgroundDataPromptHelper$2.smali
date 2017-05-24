.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper$2;
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
    .line 57
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper$2;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper$2;->val$dont_promt_next:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper$2;->val$dont_promt_next:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper$2;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->setBackGroundDataDontPromt()V

    .line 66
    :cond_0
    return-void
.end method
