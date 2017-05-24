.class Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter$CustomDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "WhiteListShieldMergedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter$CustomDataSetObserver;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter$CustomDataSetObserver;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "WhiteListShieldMergedAdapter"

    const-string v1, "CustomDataSetObserver, onChanged!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter$CustomDataSetObserver;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->notifyDataSetChanged()V

    .line 34
    return-void
.end method
