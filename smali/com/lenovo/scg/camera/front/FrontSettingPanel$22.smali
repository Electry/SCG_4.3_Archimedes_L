.class Lcom/lenovo/scg/camera/front/FrontSettingPanel$22;
.super Ljava/lang/Object;
.source "FrontSettingPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/front/FrontSettingPanel;->initVideoButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V
    .locals 0

    .prologue
    .line 915
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$22;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 920
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$22;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoPanelContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$1100(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 922
    const-string v0, "FrontSettingPanel"

    const-string/jumbo v1, "onClick, mVideoButton, mVideoPanelContainer GONE!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$22;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->showVideoPanel()V

    .line 931
    :goto_0
    return-void

    .line 927
    :cond_0
    const-string v0, "FrontSettingPanel"

    const-string/jumbo v1, "onClick, mVideoButton, mVideoPanelContainer Visible!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$22;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->hideVideoPanel()V

    goto :goto_0
.end method
