.class Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$6;
.super Ljava/lang/Object;
.source "PhotoEditFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$6;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 782
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 806
    :goto_0
    :sswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$6;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # invokes: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->dismissPopupWindow()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$2200(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V

    .line 807
    return-void

    .line 784
    :sswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$6;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # invokes: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->shareToQiezi()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$1600(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V

    goto :goto_0

    .line 787
    :sswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$6;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # invokes: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->shareToMMS()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$1700(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V

    goto :goto_0

    .line 790
    :sswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$6;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # invokes: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->shareToWeiXin()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$1800(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V

    goto :goto_0

    .line 793
    :sswitch_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$6;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # invokes: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->shareToWeibo()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$1900(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V

    goto :goto_0

    .line 796
    :sswitch_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$6;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # invokes: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->shareToFriendcircle()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$2000(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V

    goto :goto_0

    .line 799
    :sswitch_6
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$6;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # invokes: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->shareToMore()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$2100(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V

    goto :goto_0

    .line 782
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100084 -> :sswitch_1
        0x7f100089 -> :sswitch_3
        0x7f10008b -> :sswitch_5
        0x7f10008d -> :sswitch_4
        0x7f10008f -> :sswitch_2
        0x7f100093 -> :sswitch_6
        0x7f100095 -> :sswitch_0
    .end sparse-switch
.end method
