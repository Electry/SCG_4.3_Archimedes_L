.class public final enum Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;
.super Ljava/lang/Enum;
.source "MtpDeviceIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Progress"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

.field public static final enum Finished:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

.field public static final enum Initialized:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

.field public static final enum Pending:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

.field public static final enum Sorting:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

.field public static final enum Started:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

.field public static final enum Uninitialized:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    new-instance v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Uninitialized:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    new-instance v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    const-string v1, "Initialized"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Initialized:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    new-instance v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    const-string v1, "Pending"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Pending:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    new-instance v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    const-string v1, "Started"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Started:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    new-instance v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    const-string v1, "Sorting"

    invoke-direct {v0, v1, v7}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Sorting:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    new-instance v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    const-string v1, "Finished"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Finished:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    .line 96
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    sget-object v1, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Uninitialized:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Initialized:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Pending:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Started:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Sorting:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Finished:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->$VALUES:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    const-class v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->$VALUES:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    invoke-virtual {v0}, [Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    return-object v0
.end method
