.class Lcom/lenovo/scg/camera/front/FrontSettingPanel$19;
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
    .line 688
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$19;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 693
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$19;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # invokes: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getSupplyValue()Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$1400(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Ljava/lang/String;

    move-result-object v1

    .line 694
    .local v1, "supplyValue":Ljava/lang/String;
    const-string/jumbo v2, "pink"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 695
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$19;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    const-string/jumbo v3, "pink"

    # invokes: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->udpateCameraDefaultPreferencesForSupply(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$1500(Lcom/lenovo/scg/camera/front/FrontSettingPanel;Ljava/lang/String;)V

    .line 704
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$19;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # invokes: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->is169Open()Z
    invoke-static {v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$1900(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Z

    move-result v0

    .line 705
    .local v0, "is169":Z
    if-eqz v0, :cond_1

    .line 706
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$19;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$900(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v2

    const v3, 0x66ffbde7

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/front/FrontView;->showSupplyMaskView(I)V

    .line 711
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$19;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyButton:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$000(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$19;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020176

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v6, v3, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 713
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$19;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # invokes: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateCameraShutterButton(Z)V
    invoke-static {v2, v5}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$1600(Lcom/lenovo/scg/camera/front/FrontSettingPanel;Z)V

    .line 714
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$19;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # invokes: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateCameraVideoButton(Z)V
    invoke-static {v2, v5}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$1700(Lcom/lenovo/scg/camera/front/FrontSettingPanel;Z)V

    .line 715
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$19;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # invokes: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->updateSupplyBeautyBotton(Z)V
    invoke-static {v2, v5}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$1800(Lcom/lenovo/scg/camera/front/FrontSettingPanel;Z)V

    .line 717
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$19;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    const v3, 0x7f0f005a

    # invokes: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->showTip(I)V
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$2000(Lcom/lenovo/scg/camera/front/FrontSettingPanel;I)V

    .line 720
    .end local v0    # "is169":Z
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$19;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->hideSupplyPanel()V

    .line 721
    return-void

    .line 708
    .restart local v0    # "is169":Z
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$19;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$900(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v2

    const/16 v3, -0x220d

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/front/FrontView;->showSupplyMaskView(I)V

    goto :goto_0
.end method
