.class Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;
.super Ljava/lang/Object;
.source "CommentsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewCache"
.end annotation


# instance fields
.field contentView:Landroid/widget/TextView;

.field imageView:Landroid/widget/ImageView;

.field nameView:Landroid/widget/TextView;

.field replyView:Landroid/widget/ImageView;

.field source:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

.field time:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
