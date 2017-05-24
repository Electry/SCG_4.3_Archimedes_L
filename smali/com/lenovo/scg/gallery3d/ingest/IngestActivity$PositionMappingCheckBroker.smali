.class Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;
.super Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;
.source "IngestActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView$OnClearChoicesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionMappingCheckBroker"
.end annotation


# instance fields
.field private mLastMappingGrid:I

.field private mLastMappingPager:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 270
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;-><init>()V

    .line 272
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->mLastMappingPager:I

    .line 274
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->mLastMappingGrid:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$1;

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;-><init>(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)V

    return-void
.end method

.method private mapGridToPagerPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 285
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->mLastMappingGrid:I

    if-eq p1, v0, :cond_0

    .line 286
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->mLastMappingGrid:I

    .line 287
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mPagerAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$1000(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->translatePositionWithLabels(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->mLastMappingPager:I

    .line 289
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->mLastMappingPager:I

    return v0
.end method

.method private mapPagerToGridPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 277
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->mLastMappingPager:I

    if-eq p1, v0, :cond_0

    .line 278
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->mLastMappingPager:I

    .line 279
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$200(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->translatePositionWithoutLabels(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->mLastMappingGrid:I

    .line 281
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->mLastMappingGrid:I

    return v0
.end method


# virtual methods
.method public isItemChecked(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mGridView:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$100(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->mapPagerToGridPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public onCheckedChange(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 299
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mPagerAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$1000(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->mapGridToPagerPosition(I)I

    move-result v0

    invoke-super {p0, v0, p2}, Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;->onCheckedChange(IZ)V

    .line 302
    :cond_0
    return-void
.end method

.method public onClearChoices()V
    .locals 0

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->onBulkCheckedChange()V

    .line 312
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 294
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mGridView:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$100(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->mapPagerToGridPosition(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->setItemChecked(IZ)V

    .line 295
    return-void
.end method
