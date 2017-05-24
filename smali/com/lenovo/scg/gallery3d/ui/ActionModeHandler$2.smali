.class Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$2;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
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
    .line 214
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "source"    # Landroid/widget/ShareActionProvider;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->access$000(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 217
    const/4 v0, 0x0

    return v0
.end method
