.class Lcom/lenovo/scg/camera/shortcut/ShortcutView$8;
.super Ljava/lang/Object;
.source "ShortcutView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/shortcut/ShortcutView;->initArrow()V
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
    .line 1493
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$8;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 1497
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$8;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$700(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    if-nez v0, :cond_1

    .line 1498
    const-string v0, "ShortcutView"

    const-string v1, "hide shortcut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$8;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->shrinkShortcut(Z)V

    .line 1504
    :cond_0
    :goto_0
    return-void

    .line 1500
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$8;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$700(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1501
    const-string v0, "ShortcutView"

    const-string/jumbo v1, "show shortcut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$8;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->expandShortcut()V

    goto :goto_0
.end method
