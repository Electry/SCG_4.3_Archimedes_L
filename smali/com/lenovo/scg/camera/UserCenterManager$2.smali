.class Lcom/lenovo/scg/camera/UserCenterManager$2;
.super Ljava/lang/Object;
.source "UserCenterManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/UserCenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/UserCenterManager;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/UserCenterManager;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lenovo/scg/camera/UserCenterManager$2;->this$0:Lcom/lenovo/scg/camera/UserCenterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 122
    :pswitch_0
    const-string/jumbo v1, "usercenter"

    const-string/jumbo v2, "onClickListener -------- sina login"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/UserCenterManager$2;->this$0:Lcom/lenovo/scg/camera/UserCenterManager;

    # getter for: Lcom/lenovo/scg/camera/UserCenterManager;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lenovo/scg/camera/UserCenterManager;->access$200(Lcom/lenovo/scg/camera/UserCenterManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;-><init>(Landroid/app/Activity;)V

    .line 124
    .local v0, "loginManager":Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
    iget-object v1, p0, Lcom/lenovo/scg/camera/UserCenterManager$2;->this$0:Lcom/lenovo/scg/camera/UserCenterManager;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->login(Lcom/lenovo/scg/camera/UserCenterManager;)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x7f1009ca
        :pswitch_0
    .end packed-switch
.end method
