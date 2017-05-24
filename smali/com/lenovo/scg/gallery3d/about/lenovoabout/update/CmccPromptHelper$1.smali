.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper$1;
.super Ljava/lang/Object;
.source "CmccPromptHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;->showPromtDialog(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;

.field final synthetic val$dont_promt_next:Landroid/widget/CheckBox;

.field final synthetic val$next:Ljava/lang/Runnable;

.field final synthetic val$promt_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;Landroid/widget/CheckBox;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper$1;->val$dont_promt_next:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper$1;->val$promt_type:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper$1;->val$next:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper$1;->val$dont_promt_next:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper$1;->val$promt_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->setCmccDontPromt(Ljava/lang/String;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper$1;->val$next:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 77
    return-void
.end method
