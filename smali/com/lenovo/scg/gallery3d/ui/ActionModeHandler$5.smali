.class Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$5;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->showMoreShareDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)V
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$5;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "index"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 686
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$5;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0, p3}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->shareToOthers(I)V

    .line 687
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$5;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->access$1100(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->dismissDialog()Z

    .line 688
    return-void
.end method
