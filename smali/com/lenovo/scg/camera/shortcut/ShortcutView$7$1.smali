.class Lcom/lenovo/scg/camera/shortcut/ShortcutView$7$1;
.super Ljava/lang/Object;
.source "ShortcutView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;)V
    .locals 0

    .prologue
    .line 1421
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$7$1;->this$1:Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$7$1;->this$1:Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # invokes: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->resetAll()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$2000(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V

    .line 1426
    return-void
.end method
