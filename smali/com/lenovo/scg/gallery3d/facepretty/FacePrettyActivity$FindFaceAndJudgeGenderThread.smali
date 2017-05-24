.class Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;
.super Ljava/lang/Thread;
.source "FacePrettyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FindFaceAndJudgeGenderThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0

    .prologue
    .line 2264
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2269
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2270
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    const-string v6, "FacePrettyActivity FindFaceAndJudgeGenderThread "

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2272
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getRelativeRects()[Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v5

    if-nez v5, :cond_4

    .line 2276
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getBaseBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->calculateAbsoluteFaceRectsInBaseBitmap(Landroid/graphics/Bitmap;)[Landroid/graphics/Rect;
    invoke-static {v5, v6}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Landroid/graphics/Bitmap;)[Landroid/graphics/Rect;

    move-result-object v0

    .line 2278
    .local v0, "absoluteFaceRects":[Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 2280
    .local v4, "relativeFaceRects":[Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    array-length v5, v0

    if-lez v5, :cond_0

    .line 2282
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getBaseBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v0}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->calcuteRelativeFaceRectInBaseBitmap(Landroid/graphics/Bitmap;[Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    move-result-object v4

    .line 2284
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->setRelativeRects([Landroid/graphics/Rect;)V

    .line 2286
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v4}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/graphics/Rect;

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->relativeRects:[Landroid/graphics/Rect;
    invoke-static {v6, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7802(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;[Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    .line 2289
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getBaseBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v0}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/graphics/Rect;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->judgeFaceGenderInBaseBitmap(Landroid/graphics/Bitmap;[Landroid/graphics/Rect;)Ljava/util/List;
    invoke-static {v6, v7, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Landroid/graphics/Bitmap;[Landroid/graphics/Rect;)Ljava/util/List;

    .line 2293
    :cond_0
    if-eqz v4, :cond_3

    .line 2297
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2298
    .local v3, "mFaceRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 2299
    aget-object v5, v0, v1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2298
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2301
    :cond_1
    sget-boolean v5, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v5, :cond_3

    .line 2302
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->setPicPostFaceRectRoll(Ljava/util/ArrayList;[I)V

    .line 2304
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2306
    .local v2, "mFacePretty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;>;"
    const/4 v1, 0x0

    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 2307
    new-instance v5, Lcom/lenovo/scg/gallery3d/facepretty/data/DefaultFacePrettyParam;

    invoke-direct {v5}, Lcom/lenovo/scg/gallery3d/facepretty/data/DefaultFacePrettyParam;-><init>()V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2306
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2309
    :cond_2
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->setFaceEffectParams(Ljava/util/ArrayList;)V

    .line 2311
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->getCommand()Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    move-result-object v6

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftCommand:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;
    invoke-static {v5, v6}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8002(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;)Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    .line 2316
    .end local v1    # "i":I
    .end local v2    # "mFacePretty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;>;"
    .end local v3    # "mFaceRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :cond_3
    sget-object v5, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2319
    .end local v0    # "absoluteFaceRects":[Landroid/graphics/Rect;
    .end local v4    # "relativeFaceRects":[Landroid/graphics/Rect;
    :cond_4
    return-void
.end method
