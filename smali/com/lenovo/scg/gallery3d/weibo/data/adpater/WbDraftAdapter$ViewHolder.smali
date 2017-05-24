.class Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "WbDraftAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field imgHint:Landroid/widget/ImageView;

.field imgPos:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

.field tvContent:Landroid/widget/TextView;

.field tvTime:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$1;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)V

    return-void
.end method
