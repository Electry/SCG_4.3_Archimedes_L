.class Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$1;
.super Ljava/lang/Object;
.source "SaveCopyTask.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$ContentResolverQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->insertContent(Ljava/io/File;Landroid/graphics/Bitmap;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$1;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCursorResult(Landroid/database/Cursor;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v6, 0x0

    .line 192
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    .line 193
    .local v0, "latitude":D
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    .line 195
    .local v2, "longitude":D
    cmpl-double v4, v0, v6

    if-nez v4, :cond_0

    cmpl-double v4, v2, v6

    if-eqz v4, :cond_1

    .line 196
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$1;->val$values:Landroid/content/ContentValues;

    const-string v5, "latitude"

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 197
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$1;->val$values:Landroid/content/ContentValues;

    const-string v5, "longitude"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 199
    :cond_1
    return-void
.end method
