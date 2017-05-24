.class Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$12;
.super Ljava/lang/Object;
.source "ShareCenterActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V
    .locals 0

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$12;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 1237
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1245
    :goto_0
    return-void

    .line 1239
    :sswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$12;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->setSelected(Z)V

    goto :goto_0

    .line 1242
    :sswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$12;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$500(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->setSelected(Z)V

    goto :goto_0

    .line 1237
    :sswitch_data_0
    .sparse-switch
        0x7f1005a1 -> :sswitch_0
        0x7f1005a5 -> :sswitch_1
    .end sparse-switch
.end method
