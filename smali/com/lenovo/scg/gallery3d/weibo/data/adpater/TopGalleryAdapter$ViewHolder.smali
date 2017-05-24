.class public Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TopGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private item_image:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;->item_image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;->item_image:Landroid/widget/ImageView;

    return-object p1
.end method
