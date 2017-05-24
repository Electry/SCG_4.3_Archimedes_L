.class Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RepostsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field imgHead:Landroid/widget/ImageView;

.field imgReply:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;

.field tvContent:Landroid/widget/TextView;

.field tvName:Landroid/widget/TextView;

.field tvSource:Landroid/widget/TextView;

.field tvTime:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$1;

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$ViewHolder;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;)V

    return-void
.end method
