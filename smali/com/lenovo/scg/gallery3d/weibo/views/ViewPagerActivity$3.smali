.class Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$3;
.super Ljava/lang/Object;
.source "ViewPagerActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$ContentResolverQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->insertContent(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$3;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCursorResult(Landroid/database/Cursor;)V
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v8, 0x0

    .line 808
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$3;->val$values:Landroid/content/ContentValues;

    const-string v5, "datetaken"

    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 810
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    .line 811
    .local v0, "latitude":D
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    .line 814
    .local v2, "longitude":D
    cmpl-double v4, v0, v8

    if-nez v4, :cond_0

    cmpl-double v4, v2, v8

    if-eqz v4, :cond_1

    .line 815
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$3;->val$values:Landroid/content/ContentValues;

    const-string v5, "latitude"

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 816
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$3;->val$values:Landroid/content/ContentValues;

    const-string v5, "longitude"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 818
    :cond_1
    return-void
.end method
