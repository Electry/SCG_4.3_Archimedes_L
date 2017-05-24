.class Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1$1;
.super Landroid/os/Handler;
.source "SCGInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1$1;->this$1:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 73
    :pswitch_0
    const-string v0, "SCGInputFilter looper will quit"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1$1;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1$1;->this$1:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1;->this$0:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    # invokes: Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->hideHint()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->access$100(Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;)V

    goto :goto_0

    .line 80
    :pswitch_1
    # setter for: Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInputLocked:Z
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->access$202(Z)Z

    .line 81
    const-string v0, "%s unlock input,time=%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    # getter for: Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInfo:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->access$300()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    # getter for: Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->MAX_DELAY_TIME:I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->access$400()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    const-string v0, ""

    # setter for: Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInfo:Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1$1;->this$1:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1;->this$0:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    # invokes: Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->hideHint()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->access$100(Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;)V

    goto :goto_0

    .line 88
    :pswitch_2
    # setter for: Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInputLocked:Z
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->access$202(Z)Z

    .line 90
    const-string v0, "%s input locke timeout !!!"

    new-array v1, v4, [Ljava/lang/Object;

    # getter for: Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInfo:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->access$300()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    const-string v0, ""

    # setter for: Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInfo:Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1$1;->this$1:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1;->this$0:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    # invokes: Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->hideHint()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->access$100(Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;)V

    .line 95
    const/16 v0, 0x1388

    # setter for: Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->LOCK_TIME_OUT:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->access$502(I)I

    .line 97
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->isUSERType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    # getter for: Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->access$600()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u8f93\u5165\u4fdd\u62a4\u8d85\u65f6\uff0c\u5141\u8bb8\u65b0\u7684\u8f93\u5165"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 103
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1$1;->this$1:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1;->this$0:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    # invokes: Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->showHint()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->access$700(Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
