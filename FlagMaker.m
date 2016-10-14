bandera=imread('./sampleflag.jpg');
photo=imread('./sampleprofilepicture.jpg');
flag_size=imresize(bandera,[size(photo,1), size(photo,2)]);
whos('photo')
photo_grey=mean(photo,3);
photo_grey=round(repmat(photo_grey,1,1,3));

subplot(1,3,1)
imshow(photo)
subplot(1,3,2)
imshow(flag_size)
subplot(1,3,3)
photofinal=photo_grey.*cast(flag_size,'double')/256;

photofinal=(cast(flag_size,'double')+cast(photo,'double'))/2;
photofinal=cast(photofinal,'uint8');
imshow(photofinal)
imwrite(photofinal,'./sampleoutput.jpg')