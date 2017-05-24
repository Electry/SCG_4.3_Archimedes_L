.class Lcom/lenovo/scg/camera/shortcut/ShortcutView$10;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/shortcut/ShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V
    .locals 0

    .prologue
    .line 1718
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$10;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1721
    const-string v0, "ShortcutView"

    const-string/jumbo v1, "resetReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$10;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # invokes: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->resetAll()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$2000(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V

    .line 1723
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$10;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$700(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1724
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$10;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->initArrow()V

    .line 1725
    return-void
.end method
