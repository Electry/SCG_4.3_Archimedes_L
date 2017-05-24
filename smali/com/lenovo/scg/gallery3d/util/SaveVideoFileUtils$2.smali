.class final Lcom/lenovo/scg/gallery3d/util/SaveVideoFileUtils$2;
.super Ljava/lang/Object;
.source "SaveVideoFileUtils.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/SaveVideoFileUtils$ContentResolverQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/util/SaveVideoFileUtils;->insertContent(Lcom/lenovo/scg/gallery3d/util/SaveVideoFileInfo;Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/util/SaveVideoFileUtils$2;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCursorResult(Landroid/database/Cursor;)V
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v10, 0x0

    .line 110
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 111
    .local v4, "timeTaken":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 112
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/util/SaveVideoFileUtils$2;->val$values:Landroid/content/ContentValues;

    const-string v7, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 114
    :cond_0
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    .line 115
    .local v0, "latitude":D
    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    .line 119
    .local v2, "longitude":D
    cmpl-double v6, v0, v10

    if-nez v6, :cond_1

    cmpl-double v6, v2, v10

    if-eqz v6, :cond_2

    .line 120
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/util/SaveVideoFileUtils$2;->val$values:Landroid/content/ContentValues;

    const-string v7, "latitude"

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 121
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/util/SaveVideoFileUtils$2;->val$values:Landroid/content/ContentValues;

    const-string v7, "longitude"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 123
    :cond_2
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/util/SaveVideoFileUtils$2;->val$values:Landroid/content/ContentValues;

    const-string/jumbo v7, "resolution"

    const/4 v8, 0x3

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method
