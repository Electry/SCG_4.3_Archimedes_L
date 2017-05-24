.class Lcom/lenovo/scg/camera/front/FrontSettingPanel$18;
.super Ljava/lang/Object;
.source "FrontSettingPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/front/FrontSettingPanel;->initSupplyPanel()V
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
    .line 660
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$18;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 665
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$18;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->isSupplyOpen()Z

    move-result v0

    .line 666
    .local v0, "isSupplyOpen":Z
    if-eqz v0, :cond_0

    .line 667
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$18;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    const-string/jumbo v2, "off"

    # invokes: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->udpateCameraDefaultPreferencesForSupply(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$1500(Lcom/lenovo/scg/camera/front/FrontSettingPanel;Ljava/lang/String;)V

    .line 668
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$18;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$900(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/FrontView;->removeSupplyView()V

    .line 676
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$18;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$000(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$18;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020177

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 678
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$18;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # invokes: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateCameraShutterButton(Z)V
    invoke-static {v1, v4}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$1600(Lcom/lenovo/scg/camera/front/FrontSettingPanel;Z)V

    .line 679
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$18;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # invokes: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateCameraVideoButton(Z)V
    invoke-static {v1, v4}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$1700(Lcom/lenovo/scg/camera/front/FrontSettingPanel;Z)V

    .line 680
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$18;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # invokes: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateSupplyBeautyBotton(Z)V
    invoke-static {v1, v4}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$1800(Lcom/lenovo/scg/camera/front/FrontSettingPanel;Z)V

    .line 684
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$18;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->hideSupplyPanel()V

    .line 685
    return-void
.end method
