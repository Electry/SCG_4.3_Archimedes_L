.class Lcom/lenovo/scg/camera/shortcut/ShortcutView$9;
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
    .line 1708
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$9;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1711
    const-string v0, "ShortcutView"

    const-string/jumbo v1, "settingChangedReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$9;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initAllDrawable()V

    .line 1713
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$9;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->updateAllShortcutDrawable()V

    .line 1714
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$9;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->showHint()V

    .line 1715
    return-void
.end method
