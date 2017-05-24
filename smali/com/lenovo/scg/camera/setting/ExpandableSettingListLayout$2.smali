.class Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$2;
.super Landroid/os/Handler;
.source "ExpandableSettingListLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$2;->this$0:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 461
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 462
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 464
    :pswitch_0
    const/4 v0, 0x0

    const-string v1, "Handler in ==============="

    invoke-static {v0, v1}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$2;->this$0:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    # getter for: Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->expandableList:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->access$000(Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->postInvalidate()V

    .line 466
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$2;->this$0:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    # getter for: Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->myBaseExpandableListAdapter:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->access$100(Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;)Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$2;->this$0:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    # getter for: Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->myBaseExpandableListAdapter:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->access$100(Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;)Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 462
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
