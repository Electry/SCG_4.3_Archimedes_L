.class Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$1;
.super Ljava/lang/Object;
.source "WbDraftAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 149
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    .line 150
    .local v0, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;
    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    invoke-direct {v1, v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;)V

    .line 151
    .local v1, "td":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 145
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1008c8 -> :sswitch_0
        0x7f100a11 -> :sswitch_0
    .end sparse-switch
.end method
