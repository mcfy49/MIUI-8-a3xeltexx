.class Lcom/samsung/cpp/CPPSrvCommunicator$1;
.super Ljava/lang/Object;
.source "CPPSrvCommunicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/cpp/CPPSrvCommunicator;->executeRequest(Ljava/lang/String;Ljava/lang/String;IJIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/cpp/CPPSrvCommunicator;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$dbType:I

.field final synthetic val$mode:I

.field final synthetic val$rat:I

.field final synthetic val$req_id:J

.field final synthetic val$retryCount:I

.field final synthetic val$type:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/cpp/CPPSrvCommunicator;Ljava/lang/String;IJIILjava/lang/String;II)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->this$0:Lcom/samsung/cpp/CPPSrvCommunicator;

    iput-object p2, p0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$url:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    iput-wide p4, p0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    iput p6, p0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$rat:I

    iput p7, p0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$retryCount:I

    iput-object p8, p0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    iput p9, p0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$dbType:I

    iput p10, p0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 39

    .prologue
    .line 96
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v26

    .line 97
    .local v26, "msg":Landroid/os/Message;
    new-instance v36, Landroid/os/Bundle;

    invoke-direct/range {v36 .. v36}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v36, "result":Landroid/os/Bundle;
    const/16 v17, 0x0

    .line 99
    .local v17, "conn":Ljava/net/HttpURLConnection;
    const/16 v31, 0x0

    .line 100
    .local v31, "out":Ljava/io/DataOutputStream;
    const/16 v28, 0x0

    .line 102
    .local v28, "needCellDBRetry":Z
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() url : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", req_id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rat : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$rat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", retryCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$retryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() body : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :try_start_0
    const-string v29, ""

    .line 108
    .local v29, "newUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const v3, 0x15f90

    if-ne v2, v3, :cond_7

    .line 109
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$rat:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "api/v1/policy/wifi?_method=GET"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 146
    :cond_0
    :goto_0
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New url : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 149
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, v29

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v18

    check-cast v18, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .local v18, "conn1":Ljavax/net/ssl/HttpsURLConnection;
    :try_start_1
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v19

    .line 154
    .local v19, "context":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->this$0:Lcom/samsung/cpp/CPPSrvCommunicator;

    # getter for: Lcom/samsung/cpp/CPPSrvCommunicator;->pin:Lcom/samsung/cpp/CPPPinning;
    invoke-static {v3}, Lcom/samsung/cpp/CPPSrvCommunicator;->access$000(Lcom/samsung/cpp/CPPSrvCommunicator;)Lcom/samsung/cpp/CPPPinning;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/samsung/cpp/CPPPinning;->getTrustManagers(Ljava/lang/String;)[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 155
    invoke-virtual/range {v19 .. v19}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    .end local v19    # "context":Ljavax/net/ssl/SSLContext;
    :goto_1
    move-object/from16 v17, v18

    .line 164
    .end local v18    # "conn1":Ljavax/net/ssl/HttpsURLConnection;
    :goto_2
    const/16 v2, 0x1770

    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 166
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_d

    .line 167
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() POST TYPE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v2, "POST"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 169
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 170
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_3
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 182
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 183
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->connect()V

    .line 187
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x7530

    if-ne v2, v3, :cond_2

    .line 188
    :cond_1
    new-instance v32, Ljava/io/DataOutputStream;

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    .end local v31    # "out":Ljava/io/DataOutputStream;
    .local v32, "out":Ljava/io/DataOutputStream;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    .line 190
    .local v25, "message":[B
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() send message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 192
    invoke-virtual/range {v32 .. v32}, Ljava/io/DataOutputStream;->size()I

    move-result v37

    .line 193
    .local v37, "sizeOfSendData":I
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() sizeOfSendData : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual/range {v32 .. v32}, Ljava/io/DataOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v31, v32

    .line 197
    .end local v25    # "message":[B
    .end local v32    # "out":Ljava/io/DataOutputStream;
    .end local v37    # "sizeOfSendData":I
    .restart local v31    # "out":Ljava/io/DataOutputStream;
    :cond_2
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v22

    .line 198
    .local v22, "httpResponseCode":I
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() Http Response Code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v23

    .line 200
    .local v23, "httpResponseMsg":Ljava/lang/String;
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() Http Response Msg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v2, "http_response_code"

    move-object/from16 v0, v36

    move/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    const-string v2, "http_response_msg"

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/16 v2, 0xc8

    move/from16 v0, v22

    if-ne v0, v2, :cond_16

    .line 207
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v24

    .line 208
    .local v24, "is":Ljava/io/InputStream;
    new-instance v30, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 209
    .local v30, "os":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x400

    new-array v14, v2, [B

    .line 212
    .local v14, "byteBuffer":[B
    :goto_4
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/io/InputStream;->read([B)I

    move-result v27

    .local v27, "nLength":I
    if-lez v27, :cond_f

    .line 213
    const/4 v2, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v14, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 258
    .end local v14    # "byteBuffer":[B
    .end local v22    # "httpResponseCode":I
    .end local v23    # "httpResponseMsg":Ljava/lang/String;
    .end local v24    # "is":Ljava/io/InputStream;
    .end local v27    # "nLength":I
    .end local v29    # "newUrl":Ljava/lang/String;
    .end local v30    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v20

    .line 260
    .local v20, "e":Ljava/io/IOException;
    :goto_5
    :try_start_5
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() executeRequest.Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const-string v2, "http_response_code"

    const/4 v3, 0x5

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    const-string v2, "http_response_msg"

    const-string v3, "IOException"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_3

    .line 264
    const/16 v28, 0x1

    .line 265
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() CellDBRequest Failure(IOException) --> retry flag set"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 269
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_19

    if-eqz v28, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$retryCount:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_19

    .line 270
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() CellDBRequest Retry --> call executeRequest / req_id("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), json("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->this$0:Lcom/samsung/cpp/CPPSrvCommunicator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$url:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$rat:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$mode:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$retryCount:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$dbType:I

    # invokes: Lcom/samsung/cpp/CPPSrvCommunicator;->executeRequest(Ljava/lang/String;Ljava/lang/String;IJIIII)V
    invoke-static/range {v2 .. v11}, Lcom/samsung/cpp/CPPSrvCommunicator;->access$100(Lcom/samsung/cpp/CPPSrvCommunicator;Ljava/lang/String;Ljava/lang/String;IJIIII)V

    .line 283
    :goto_6
    if-eqz v17, :cond_4

    .line 284
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 287
    :cond_4
    if-eqz v31, :cond_5

    .line 288
    :try_start_6
    invoke-virtual/range {v31 .. v31}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 294
    .end local v20    # "e":Ljava/io/IOException;
    :cond_5
    :goto_7
    return-void

    .line 112
    .restart local v29    # "newUrl":Ljava/lang/String;
    :cond_6
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "api/v1/policy?_method=GET"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 114
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_9

    .line 116
    const-string v12, "v3"

    .line 117
    .local v12, "apiVer":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$rat:I

    sparse-switch v2, :sswitch_data_0

    .line 137
    const-string v34, "lte"

    .line 140
    .local v34, "ratName":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$dbType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 141
    const-string v12, "v5"

    .line 142
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "api/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cells/cust/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?_method=POST"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 143
    goto/16 :goto_0

    .line 119
    .end local v34    # "ratName":Ljava/lang/String;
    :sswitch_0
    const-string v34, "lte"

    .line 120
    .restart local v34    # "ratName":Ljava/lang/String;
    goto :goto_8

    .line 122
    .end local v34    # "ratName":Ljava/lang/String;
    :sswitch_1
    const-string v34, "wcdma"

    .line 123
    .restart local v34    # "ratName":Ljava/lang/String;
    goto :goto_8

    .line 125
    .end local v34    # "ratName":Ljava/lang/String;
    :sswitch_2
    const-string v34, "gsm"

    .line 126
    .restart local v34    # "ratName":Ljava/lang/String;
    goto :goto_8

    .line 128
    .end local v34    # "ratName":Ljava/lang/String;
    :sswitch_3
    const-string v34, "cdma1x"

    .line 129
    .restart local v34    # "ratName":Ljava/lang/String;
    goto :goto_8

    .line 131
    .end local v34    # "ratName":Ljava/lang/String;
    :sswitch_4
    const-string v34, "tdscdma"

    .line 132
    .restart local v34    # "ratName":Ljava/lang/String;
    goto :goto_8

    .line 134
    .end local v34    # "ratName":Ljava/lang/String;
    :sswitch_5
    const-string v34, "wifi"

    .line 135
    .restart local v34    # "ratName":Ljava/lang/String;
    goto :goto_8

    .line 143
    .end local v12    # "apiVer":Ljava/lang/String;
    .end local v34    # "ratName":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x7530

    if-ne v2, v3, :cond_0

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$url:Ljava/lang/String;

    move-object/from16 v29, v0

    goto/16 :goto_0

    .line 156
    .restart local v18    # "conn1":Ljavax/net/ssl/HttpsURLConnection;
    :catch_1
    move-exception v2

    move-object/from16 v20, v2

    .line 157
    .local v20, "e":Ljava/security/GeneralSecurityException;
    :goto_9
    invoke-virtual/range {v20 .. v20}, Ljava/security/GeneralSecurityException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 269
    .end local v18    # "conn1":Ljavax/net/ssl/HttpsURLConnection;
    .end local v20    # "e":Ljava/security/GeneralSecurityException;
    .end local v29    # "newUrl":Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object/from16 v38, v2

    :goto_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_1b

    if-eqz v28, :cond_1b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$retryCount:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1b

    .line 270
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() CellDBRequest Retry --> call executeRequest / req_id("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), json("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->this$0:Lcom/samsung/cpp/CPPSrvCommunicator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$url:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$rat:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$mode:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$retryCount:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$dbType:I

    # invokes: Lcom/samsung/cpp/CPPSrvCommunicator;->executeRequest(Ljava/lang/String;Ljava/lang/String;IJIIII)V
    invoke-static/range {v2 .. v11}, Lcom/samsung/cpp/CPPSrvCommunicator;->access$100(Lcom/samsung/cpp/CPPSrvCommunicator;Ljava/lang/String;Ljava/lang/String;IJIIII)V

    .line 283
    :goto_b
    if-eqz v17, :cond_a

    .line 284
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 287
    :cond_a
    if-eqz v31, :cond_b

    .line 288
    :try_start_8
    invoke-virtual/range {v31 .. v31}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 292
    :cond_b
    :goto_c
    throw v38

    .line 162
    .restart local v29    # "newUrl":Ljava/lang/String;
    :cond_c
    :try_start_9
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, v29

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v17, v0

    goto/16 :goto_2

    .line 171
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x7530

    if-ne v2, v3, :cond_e

    .line 172
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() POST TYPE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v2, "POST"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 174
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 175
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 177
    :cond_e
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() GET TYPE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v2, "GET"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 179
    const-string v2, "Content-Type"

    const-string v3, "application/octet-stream"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 215
    .restart local v14    # "byteBuffer":[B
    .restart local v22    # "httpResponseCode":I
    .restart local v23    # "httpResponseMsg":Ljava/lang/String;
    .restart local v24    # "is":Ljava/io/InputStream;
    .restart local v27    # "nLength":I
    .restart local v30    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_f
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V

    .line 216
    invoke-virtual/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    .line 218
    .local v15, "byteData":[B
    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-static {v15, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    .line 219
    .local v13, "bCode":[B
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v16, v2, -0x30

    .line 220
    .local v16, "code":I
    const-string v2, "result_code"

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_14

    .line 223
    if-nez v16, :cond_12

    .line 224
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() Result Code : Success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/16 v2, 0x3e

    array-length v3, v15

    add-int/lit8 v3, v3, -0x1

    invoke-static {v15, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v33

    .line 226
    .local v33, "parsedByte":[B
    const-string v2, "result_msg"

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 227
    const-string v2, "size"

    move-object/from16 v0, v33

    array-length v3, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 238
    .end local v33    # "parsedByte":[B
    :goto_d
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() Type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RESULT_CODE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RESULT_SIZE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RESULT_REQ_ID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RESULT_MSG (byteData) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v15}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 269
    .end local v13    # "bCode":[B
    .end local v14    # "byteBuffer":[B
    .end local v15    # "byteData":[B
    .end local v16    # "code":I
    .end local v24    # "is":Ljava/io/InputStream;
    .end local v27    # "nLength":I
    .end local v30    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_10
    :goto_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_17

    if-eqz v28, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$retryCount:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_17

    .line 270
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() CellDBRequest Retry --> call executeRequest / req_id("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), json("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->this$0:Lcom/samsung/cpp/CPPSrvCommunicator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$url:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$rat:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$mode:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$retryCount:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$dbType:I

    # invokes: Lcom/samsung/cpp/CPPSrvCommunicator;->executeRequest(Ljava/lang/String;Ljava/lang/String;IJIIII)V
    invoke-static/range {v2 .. v11}, Lcom/samsung/cpp/CPPSrvCommunicator;->access$100(Lcom/samsung/cpp/CPPSrvCommunicator;Ljava/lang/String;Ljava/lang/String;IJIIII)V

    .line 283
    :goto_f
    if-eqz v17, :cond_11

    .line 284
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 287
    :cond_11
    if-eqz v31, :cond_5

    .line 288
    :try_start_a
    invoke-virtual/range {v31 .. v31}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_7

    .line 290
    :catch_2
    move-exception v21

    .line 291
    .local v21, "ex":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 228
    .end local v21    # "ex":Ljava/io/IOException;
    .restart local v13    # "bCode":[B
    .restart local v14    # "byteBuffer":[B
    .restart local v15    # "byteData":[B
    .restart local v16    # "code":I
    .restart local v24    # "is":Ljava/io/InputStream;
    .restart local v27    # "nLength":I
    .restart local v30    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_12
    const/4 v2, 0x4

    move/from16 v0, v16

    if-ne v0, v2, :cond_13

    .line 229
    :try_start_b
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() Result Code : Policy Update is Required"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v2, "result_msg"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v15}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 231
    const-string v2, "size"

    array-length v3, v15

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_d

    .line 233
    :cond_13
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() CellDBRequest Failure(HTTP_OK && NOT SUCCESS)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v2, "result_msg"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v15}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 235
    const-string v2, "size"

    array-length v3, v15

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    const/16 v28, 0x0

    goto/16 :goto_d

    .line 239
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const v3, 0x15f90

    if-ne v2, v3, :cond_15

    .line 240
    new-instance v35, Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-direct {v0, v15}, Ljava/lang/String;-><init>([B)V

    .line 241
    .local v35, "response":Ljava/lang/String;
    const-string v2, "result_msg"

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v2, "body"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() Type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RESULT_CODE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", PLMN : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RESULT_MSG (response) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 245
    .end local v35    # "response":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x7530

    if-ne v2, v3, :cond_10

    .line 246
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() Result Code : Success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v2, "result_msg"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v15}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 248
    const-string v2, "req_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 249
    const-string v2, "mode"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$mode:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_e

    .line 252
    .end local v13    # "bCode":[B
    .end local v14    # "byteBuffer":[B
    .end local v15    # "byteData":[B
    .end local v16    # "code":I
    .end local v24    # "is":Ljava/io/InputStream;
    .end local v27    # "nLength":I
    .end local v30    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_16
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() Http Response : Fail !! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_10

    .line 254
    const/16 v28, 0x1

    .line 255
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() CellDBRequest Failure(HTTP_FAIL) --> retry flag set"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_e

    .line 273
    :cond_17
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() Send result to CPPProvider ! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v2, 0x6

    move-object/from16 v0, v26

    iput v2, v0, Landroid/os/Message;->what:I

    .line 275
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    move-object/from16 v0, v26

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 276
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$rat:I

    move-object/from16 v0, v26

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 277
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_18

    .line 278
    const-string v2, "req_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 280
    :cond_18
    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->this$0:Lcom/samsung/cpp/CPPSrvCommunicator;

    # getter for: Lcom/samsung/cpp/CPPSrvCommunicator;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPSrvCommunicator;->access$200(Lcom/samsung/cpp/CPPSrvCommunicator;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_f

    .line 273
    .end local v22    # "httpResponseCode":I
    .end local v23    # "httpResponseMsg":Ljava/lang/String;
    .end local v29    # "newUrl":Ljava/lang/String;
    .local v20, "e":Ljava/io/IOException;
    :cond_19
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() Send result to CPPProvider ! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v2, 0x6

    move-object/from16 v0, v26

    iput v2, v0, Landroid/os/Message;->what:I

    .line 275
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    move-object/from16 v0, v26

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 276
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$rat:I

    move-object/from16 v0, v26

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 277
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_1a

    .line 278
    const-string v2, "req_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 280
    :cond_1a
    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->this$0:Lcom/samsung/cpp/CPPSrvCommunicator;

    # getter for: Lcom/samsung/cpp/CPPSrvCommunicator;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPSrvCommunicator;->access$200(Lcom/samsung/cpp/CPPSrvCommunicator;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    .line 290
    :catch_3
    move-exception v21

    .line 291
    .restart local v21    # "ex":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 273
    .end local v20    # "e":Ljava/io/IOException;
    .end local v21    # "ex":Ljava/io/IOException;
    :cond_1b
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() Send result to CPPProvider ! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v2, 0x6

    move-object/from16 v0, v26

    iput v2, v0, Landroid/os/Message;->what:I

    .line 275
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    move-object/from16 v0, v26

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 276
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$rat:I

    move-object/from16 v0, v26

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 277
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_1c

    .line 278
    const-string v2, "req_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 280
    :cond_1c
    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->this$0:Lcom/samsung/cpp/CPPSrvCommunicator;

    # getter for: Lcom/samsung/cpp/CPPSrvCommunicator;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPSrvCommunicator;->access$200(Lcom/samsung/cpp/CPPSrvCommunicator;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_b

    .line 290
    :catch_4
    move-exception v21

    .line 291
    .restart local v21    # "ex":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c

    .line 156
    .end local v21    # "ex":Ljava/io/IOException;
    .restart local v18    # "conn1":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v29    # "newUrl":Ljava/lang/String;
    :catch_5
    move-exception v2

    move-object/from16 v20, v2

    goto/16 :goto_9

    .line 269
    .end local v18    # "conn1":Ljavax/net/ssl/HttpsURLConnection;
    .end local v31    # "out":Ljava/io/DataOutputStream;
    .restart local v32    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v2

    move-object/from16 v38, v2

    move-object/from16 v31, v32

    .end local v32    # "out":Ljava/io/DataOutputStream;
    .restart local v31    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_a

    .line 258
    .end local v31    # "out":Ljava/io/DataOutputStream;
    .restart local v32    # "out":Ljava/io/DataOutputStream;
    :catch_6
    move-exception v20

    move-object/from16 v31, v32

    .end local v32    # "out":Ljava/io/DataOutputStream;
    .restart local v31    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_5

    .line 117
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
    .end sparse-switch
.end method